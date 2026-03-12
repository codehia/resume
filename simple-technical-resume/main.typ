#import "@preview/simple-technical-resume:0.1.1": *

#let name = "Soumyaranjan Acharya"
#let phone = "+91-9019904825"
#let email = "contact@sacharya.dev"
#let github = "codehia"
#let linkedin = "soumyaracharya"
#let personal-site = "sacharya.dev"

#show: resume.with(
  top-margin: 0.45in,
  personal-info-font-size: 9.2pt,
  author-position: center,
  personal-info-position: center,
  author-name: name,
  phone: phone,
  email: email,
  website: personal-site,
  linkedin-user-id: linkedin,
  github-username: github,
)


#custom-title("Experience")[
  #work-heading(
    "Senior Backend Developer",
    "Flockjay Inc",
    "Covina, CA (Remote)",
    datetime(year: 2021, month: 1, day: 18),
    "Present",
  )[
    - Sole backend engineer through the company's pivot from a sales bootcamp to a B2B SaaS platform; now senior on a 7-person team with 15+ enterprise clients including Redis
    - Brought average response times and query counts down 70% through targeted query optimization, shipped incrementally alongside normal feature work
    - Built a rule engine that runs customer-defined conditions on a schedule --- converts them to Django ORM queries at runtime to trigger enrollment and access changes
    - Set up SSO and SCIM provisioning with Okta and Microsoft Entra; the SCIM layer handles cross-org identity, letting the same user exist across multiple client orgs with different roles in each
    - Built a Salesforce-backed checkpoint system for learning paths --- on completion it queries Salesforce, checks activity against author-set conditions, and only then unlocks the next step
    - Built the content system from scratch (courses, learning paths, assets, collections) and integrated Salesforce, Clari, and Gong to bring real-world sales and call data into the platform for authors
    - Added full-text search across all content types using PostgreSQL's built-in FTS --- first search feature on the platform
  ]

  #work-heading(
    "Software Engineer",
    "Radicali",
    "Bengaluru, KA",
    datetime(year: 2020, month: 2, day: 1),
    datetime(year: 2021, month: 1, day: 1),
  )[
    - Replaced the existing search framework with Elasticsearch, cutting search response times by over 50%
    - Wrote and optimized backend tests, bringing code coverage up by 30%
    - Built a data pipeline with Scrapy, SQS, and S3 to crawl 50,000+ links daily, validate and clean the data into a reliably updated dataset
  ]

  #work-heading(
    "Technical Mentor",
    "Masai School",
    "Bengaluru, KA",
    datetime(year: 2019, month: 6, day: 1),
    datetime(year: 2019, month: 12, day: 1),
  )[
    - Mentored students across frontend fundamentals and practical projects over an 8-month coding bootcamp
  ]

  #work-heading(
    "Python Developer",
    "Manch",
    "Bengaluru, KA",
    datetime(year: 2018, month: 3, day: 1),
    datetime(year: 2019, month: 4, day: 1),
  )[
    - Built and maintained a Scrapy/Selenium crawler that translated and saved 10,000+ pages per day into MongoDB
  ]


  #work-heading(
    "Product Support Engineer",
    "iQuanti",
    "Bengaluru, KA",
    datetime(year: 2017, month: 1, day: 1),
    datetime(year: 2018, month: 2, day: 1),
  )[
    - Built a Django app that fetched keyword rankings from a third-party API and saved results to S3 and Snowflake, cutting ad-hoc report turnaround time by over 50%
  ]
]

#custom-title("Skills")[
  #skills()[
    - *Languages:* Python, JavaScript, TypeScript
    - *Frameworks:* React, Django, Django Rest Framework (DRF)
    - *Tools:* Git, AWS, PostgreSQL, Elasticsearch, Celery, SQS, Snowflake, Scrapy
    - *Dev Tools:* Nix, Neovim, tmux, Docker, Linux
  ]
]

#custom-title("Education")[
  #education-heading(
    "Krupajal Engineering College",
    "Bhubaneshwar, Odisha",
    "Bachelor of Technology",
    "Electrical Engineeering",
    datetime(year: 2012, month: 5, day: 1),
    datetime(year: 2016, month: 8, day: 1),
  )[
    - Scored 6.9 CGPA
    - Awarded a scholarship for academic excellence in the second year of the program
  ]
]
