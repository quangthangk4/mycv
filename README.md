# Võ Quang Thắng

**Fresher Java Backend Developer · Ho Chi Minh City, Vietnam**

[View CV](CV_Vo-Quang-Thang.pdf) · [Download PDF](https://raw.githubusercontent.com/quangthangk4/mycv/main/CV_Vo-Quang-Thang.pdf) · [LinkedIn](https://www.linkedin.com/in/th%E1%BA%AFng-quang-b8b794302) · [Email](mailto:vqthang2004@gmail.com)

<img align="right" src="asset/anh_tot_nghiep.png" width="110" alt="Portrait of Võ Quang Thắng" />

## About me

I am a Computer Science graduate from Ho Chi Minh City University of Technology (HCMUT), with Java backend internship experience at InnEdu. I focus on building Spring Boot applications with PostgreSQL, Redis, and Kafka, from implementing business workflows to testing and deployment.

I am seeking a Java Backend Developer position where I can contribute to backend development and continue improving my engineering skills.

## Technical skills

| Area | Technologies |
| --- | --- |
| Languages | Java, SQL |
| Backend | Spring Boot, Spring Security, Spring Data JPA, REST APIs, JWT, OAuth2 |
| Data & messaging | PostgreSQL, Redis, Apache Kafka, Flyway |
| AI integration | Gemini API, RAG, SBERT, pgvector, semantic search |
| Testing | JUnit 5, Mockito, Testcontainers, Gatling |
| Development & deployment | Git, Maven, Docker, Linux, Nginx, GitHub Actions |

## Featured project — Library74

**AI-powered Library Management System · Graduation project: 9.2/10**

[Source code](https://github.com/quangthangk4/LMS) · [Live demo](https://library74.uk) · [Demo video](https://drive.google.com/file/d/1YmcTygbzFZaRTrhOL5eMPB9bT1LfSry7/view)

- Spring Boot modular monolith with authentication, role-based access control, and asynchronous notifications through Kafka.
- Gemini chatbot with RAG, authenticated function calls, and Redis conversation memory.
- FastAPI processing for PDF metadata, SBERT embeddings, pgvector search, and book recommendations using content-based filtering and ALS.
- PostgreSQL schema migrations and row-level locking, with automated tests and deployment to a Linux VPS through Docker Compose and GitHub Actions.

## Experience

**Java Backend Developer Intern — InnEdu** · April 2025 – October 2025

Worked on user management, Excel question imports, gamification, JWT authentication, role-based access control, and direct file uploads using S3-compatible presigned URLs. Resolved backend bugs and frontend integration issues through code review feedback.

## Education & certifications

**Bachelor of Computer Science — HCMUT** · September 2022 – October 2026

- TOEIC Listening & Reading: **705** — May 2026.
- TOEIC Speaking & Writing: **210** — September 2026, taken at HCMUT.

## Build the CV

This repository contains the LaTeX source and the compiled PDF. With CMake 3.20+ and MiKTeX or TeX Live providing `pdflatex`, run from the repository root:

```sh
cmake -P build.cmake
```

The build runs pdfLaTeX twice and updates [`CV_Vo-Quang-Thang.pdf`](CV_Vo-Quang-Thang.pdf). Temporary files stay in `build/`.

[Full build instructions](docs/BUILD.md)

| File | Purpose |
| --- | --- |
| [`main.tex`](main.tex) | CV content and formatting |
| [`CV_Vo-Quang-Thang.pdf`](CV_Vo-Quang-Thang.pdf) | Compiled CV |
| [`asset/`](asset/) | Portrait used in the CV |
| [`build.cmake`](build.cmake) | PDF build script |
| [`cmake-pdf.ps1`](cmake-pdf.ps1) | Optional PowerShell shortcut for `cmake pdf` |

The LaTeX template retains its original attribution to Jake Gutierrez and [sb2nov/resume](https://github.com/sb2nov/resume).
