CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR,
    birth_date DATE,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    sex CHAR(1),
    hire_date DATE
);


CREATE TABLE departments (
    dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR(255)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR,
	emp_no INT,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_emp (
    emp_no INT,
    dept_no CHAR(4),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE salaries (
    emp_no INT,
    salary INT,
    
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles (
    title_id VARCHAR,
    title VARCHAR(255)
    
    
);
