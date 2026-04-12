#import "@preview/simple-technical-resume:0.1.1": *

#set text(font: "IBM Plex Sans")

#let name = "Soumyaranjan Acharya"
#let phone = "+91-9019904825"
#let email = "dev@sacharya.dev"
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

#custom-title("Summary")[
  Senior Backend Engineer with 7+ years building scalable Python/Django systems. Expert in REST APIs, SSO/SAML/SCIM, performance optimization, and full-text search. Experienced leading backend architecture through company pivots, serving 15+ enterprise clients. Strong focus on PostgreSQL query tuning, async programming, and data pipeline design.
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
    - Brought average response times and query counts down ~70% through N+1 elimination, `select_related`/`prefetch_related` optimizations, and strategic database indexing; shipped incrementally alongside feature work
    - Built a rule engine that runs customer-defined conditions on a schedule --- converts them to Django ORM queries at runtime to trigger enrollment and access changes
    - Set up SSO and SCIM provisioning with Okta and Microsoft Entra, enabling enterprise clients to onboard 100s of users via automated provisioning; SCIM layer handles cross-org identity, letting the same user exist across multiple client orgs with different roles in each
    - Built a Salesforce-backed checkpoint system for learning paths --- on completion it queries Salesforce, checks activity against author-set conditions, and only then unlocks the next step
    - Built the content system from scratch (courses, learning paths, assets, collections) with full CRUD, versioning, and access control
    - Integrated Salesforce, Clari, and Gong to bring real-world sales and call data into the platform for content authors, syncing opportunities, activities, and call recordings on a scheduled basis
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
    - Wrote and optimized backend tests with pytest, bringing code coverage from ~40% to 70%+
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
    - *Languages:* Python, JavaScript, TypeScript, SQL
    - *Frameworks:* Django, Django REST Framework, FastAPI, Celery, Scrapy
    - *Databases:* PostgreSQL, Elasticsearch, MongoDB, Snowflake
    - *Infrastructure:* AWS (S3, SQS, EC2), Docker, Redis, Git, GitHub Actions
    - *Dev Tools:* Nix, Linux, tmux, Neovim
    - *Concepts:* REST APIs, SSO/SAML/SCIM, Full-Text Search, Data Pipelines, Async Programming
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
  )[
    - Scored 6.9 CGPA
    - Awarded a scholarship for academic excellence in the second year of the program
  ]
]
