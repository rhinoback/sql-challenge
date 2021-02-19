-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/nZybR3
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Employees" (
    "emp_no" INTEGER   NOT NULL,
    "emp_title_id" VARCHAR   NOT NULL,
    "birth_date" VARCHAR   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "hire_date" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Department_Employees" (
    "emp_no" INTEGER   NOT NULL,
    "dept_no" INTEGER   NOT NULL
);

CREATE TABLE "Department_Manager" (
    "dept_no" INTEGER   NOT NULL,
    "emp_no" INTEGER   NOT NULL
);

CREATE TABLE "Departments" (
    "dept_no" INTEGER   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "Salaries" (
    "emp-no" INTEGER   NOT NULL,
    "salary" INTEGER   NOT NULL
);

CREATE TABLE "Title" (
    "emp_title_id" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Title" PRIMARY KEY (
        "emp_title_id"
     )
);

CREATE TABLE "Department_Employee_Junction" (
    "emp_no" INTEGER   NOT NULL,
    "dept_no" INTEGER   NOT NULL
);

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "Title" ("emp_title_id");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp-no" FOREIGN KEY("emp-no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Department_Employee_Junction" ADD CONSTRAINT "fk_Department_Employee_Junction__emp_no" FOREIGN KEY("", "emp_no")
REFERENCES "Employees" ("", "emp_no");

ALTER TABLE "Department_Employee_Junction" ADD CONSTRAINT "fk_Department_Employee_Junction__dept_no" FOREIGN KEY("", "dept_no")
REFERENCES "Departments" ("", "dept_no");

