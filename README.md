# Pewlett Hackard Analysis

## Overview

The purpose of this analysis is to determine the number of employees that will be retiring and to also identify employees that would be eligible for a mentorship program.

## Results

- There are 72,000+ roles that will need to be filled once all eligible for retirement employees retire
- Senior Staff and Senior Engineer make up the most roles that need to be filled
- There are no managers in the mentorship pool
- If all roles are filled completely:
  -  Each mentor at the Senior Engineer level will have 90 mentees
  -  Each mentor at the Senior Staff level will have 83 mentees
  -  Each mentor at the Engineer level will have 22 mentees
  -  Each mentor at the Staff level will have 18 mentees
  -  Each mentor at the Technique Leader level will have 46 mentees
  -  Each mentor at the Assistant Engineer level will have 18 mentees

Retiring employees:

![retiring_employees](https://user-images.githubusercontent.com/95720986/153721008-0b25820c-6b71-464c-8fcc-c8b70acf5832.png)


Unique titles:

![unique_titles](https://user-images.githubusercontent.com/95720986/152613585-3c0f6d3a-9c04-4753-a3cd-71cf18d7b6aa.png)


Mentorship eligibility:

![mentorship_eligibility](https://user-images.githubusercontent.com/95720986/153721441-493add45-db30-4ac0-81ae-58db9ce338fd.png)



## Summary

How many roles will need to be filled as the "silver tsunami" begins to make an impact?

  - There are 72,000+ roles that will need to be filled once all eligible for retirement employees retire

![retiring_titles](https://user-images.githubusercontent.com/95720986/153721088-319380fb-dcd4-48ec-9ea4-97ee3d692ee6.png)


Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

   - No, there are not enough employees to mentor the number of employees that need to be replaced (mentorship_count table).  The ratio of new hires to mentors is quite high and might be unmanageable.  

![mentorship_count](https://user-images.githubusercontent.com/95720986/153722056-146fdf5c-5f51-4fe7-bdc2-c30b4f1944c9.png)

  - The Development department has the most employees eligible for the mentorship program (department_mentor table).  Do any of the employees in Development, Production or Sales have experience in other departments where they would be willing to be a mentor?

 ![department_mentor](https://user-images.githubusercontent.com/95720986/153724611-5fcd4b1e-bb3f-4a33-b74e-17f0d4ff2419.png)


Pewlett Hackard will need to do extensive hiring and training to replace the level of talent that will be retiring soon.  
