#import "@preview/simple-technical-resume:0.1.1": resume, custom-title, skills, education-heading

// Re-export unchanged functions
#let resume = resume
#let custom-title = custom-title
#let skills = skills
#let education-heading = education-heading

// period_worked is not exported by the package, so define it locally
#let period_worked(start-date, end-date) = {
  assert.eq(type(start-date), datetime)
  assert(type(end-date) == datetime or type(end-date) == str)

  if type(end-date) == str and end-date == "Present" {
    end-date = datetime.today()
  }

  [#start-date.display("[month repr:short] [year]") -- #if (
    end-date.month() == datetime.today().month() and
    end-date.year() == datetime.today().year()
  ) [Present] else [#end-date.display("[month repr:short] [year]")]]
}

// work-heading with explicit spacing hierarchy:
//   a. small but visible gap between title row and company/location row
//   b. larger gap between company/location row and first bullet
//   c. between-bullet gap > within-bullet line-wrap gap
#let work-heading(title, company, location, start-date, end-date, body) = {
  assert.eq(type(start-date), datetime)
  assert(type(end-date) == datetime or type(end-date) == str)

  // (a) par(leading) controls spacing between the two rows in the grid
  {
    set par(leading: 0.45em)
    grid(
      columns: (1fr, 1fr),
      align(left)[*#title* \ #company],
      align(right)[*#period_worked(start-date, end-date)* \ #emph(location)]
    )
  }
  // (b) visible gap before bullets, larger than between-bullet spacing
  v(0.5em)
  if body != [] {
    // (c) within-bullet line-wrap tighter than between-bullet spacing
    //     par(leading: 0.3em ≈ 3.3pt) < list(spacing: 5pt)
    set par(leading: 0.3em)
    set list(indent: 0.5em, spacing: 5pt)
    body
  }
}
