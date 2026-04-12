#import "resume-lib.typ": *

#set text(font: "IBM Plex Sans")

#let name = "Soumyaranjan Acharya"
#let phone = "+91-9019904825"
#let email = "dev@sacharya.dev"
#let github = "codehia"
#let linkedin = "soumyaracharya"
#let personal-site = "sacharya.dev"

#set list(spacing: 3pt)
#set block(spacing: 7pt)

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

#custom-title("Summary")[
  Senior Backend Engineer with 7+ years building scalable Python/Django systems. Deep experience with REST APIs, SSO/SAML/SCIM, performance optimization, and full-text search. Strong focus on PostgreSQL query tuning, event-driven systems, and data pipeline design.
]

#custom-title("Experience")[
  #work-heading(
    "Senior Backend Developer",
    "Flockjay Inc",
    "Covina, CA (Remote)",
    datetime(year: 2021, month: 1, day: 18),
    "Present",
  )[
    - Sole backend engineer through the company's pivot from a sales bootcamp to a B2B SaaS platform; now senior on a 7-person team with 15+ enterprise clients including Redis
    - Reduced average API response times and query counts by approximately 70% through backend improvements spanning endpoint restructuring and ORM query optimization
    - Built a programmable automation engine that evaluates client-configured condition-action rulesets against any user attribute or activity metric, compiling them into Django ORM queries at runtime to automate any workflow on the platform
    - Implemented SSO and SCIM provisioning with Okta and Microsoft Entra, including a custom cross-org identity model allowing the same user to hold independent roles across multiple client organisations
    - Built a system that ties learning path progression to real-world sales activity, using Salesforce data to validate whether a rep has applied what they learned before unlocking next steps
    - Architected the platform's core content system from scratch, delivering courses, learning paths, assets, and collections with versioning and access control, serving 15+ enterprise clients from a single unified codebase
    - Integrated Salesforce, Clari, and Gong to build a catalogued library of real sales calls and recordings, enriched with deal context and outcomes, giving every rep access to relevant calls to understand what drove deals forward or caused them to fall through
    - Delivered the platform's first search capability using PostgreSQL full-text search, covering all content types including call and video transcripts
  ]

  #work-heading(
    "Software Engineer",
    "Radicali",
    "Bengaluru, KA",
    datetime(year: 2020, month: 2, day: 1),
    datetime(year: 2021, month: 1, day: 1),
  )[
    - Replaced the existing search framework with Elasticsearch, cutting search response times by over 50%
    - Wrote and optimized backend tests with pytest, bringing code coverage from 40% to 70%+
    - Built a data pipeline with Scrapy, SQS, and S3 to crawl 50,000+ links daily, validate and clean the data into a reliably updated dataset
  ]

  #work-heading(
    "Technical Mentor",
    "Masai School",
    "Bengaluru, KA",
    datetime(year: 2019, month: 6, day: 1),
    datetime(year: 2019, month: 12, day: 1),
  )[
    - Mentored 20+ students on Python, Django, and JavaScript fundamentals across an intensive full-stack bootcamp; supported project reviews and debugging sessions throughout the program
  ]

  #work-heading(
    "Python Developer",
    "Manch",
    "Bengaluru, KA",
    datetime(year: 2018, month: 3, day: 1),
    datetime(year: 2019, month: 4, day: 1),
  )[
    - Built and maintained a Scrapy/Selenium crawler that scraped and stored 10,000+ pages per day into MongoDB
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
  #set list(spacing: 5pt)
  #skills()[
    - *Languages:* Python, JavaScript, TypeScript, SQL
    - *Frameworks:* Django, Django REST Framework, Celery, Scrapy
    - *Databases:* PostgreSQL, Elasticsearch, MongoDB, Snowflake
    - *Infrastructure:* AWS (S3, SQS, EC2), Docker, Redis, Git, GitHub Actions
    - *Dev Tools:* Nix, Linux, tmux, Neovim
    - *Expertise:* REST APIs, SSO/SAML/SCIM, Full-Text Search, Data Pipelines, System Integration
  ]
]

#custom-title("Education")[
  #education-heading(
    "Krupajal Engineering College",
    "Bhubaneshwar, Odisha",
    "Bachelor of Technology",
    "Electrical Engineering",
    datetime(year: 2012, month: 8, day: 1),
    datetime(year: 2016, month: 5, day: 1),
  )[]
]
