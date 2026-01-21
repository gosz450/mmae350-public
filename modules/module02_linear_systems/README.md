# Module 02 — Solving Linear Systems

In Module 1, we introduced matrices and vectors, wrote engineering models in the form

\[
\mathbf{A}\mathbf{x} = \mathbf{b},
\]

and explored numerical issues using the Hilbert matrix. That work demonstrated that even
simple-looking linear systems can behave poorly when they are **ill-conditioned**.

In this module, we focus on how engineers actually solve linear systems in practice.
Rather than computing matrix inverses, we study **direct solution methods** that are
efficient, stable, and scalable to large engineering problems.

---

## Topics Covered

This module introduces the fundamental tools used to solve linear systems reliably in
engineering applications, including:

- Interpreting the linear system \(\mathbf{A}\mathbf{x} = \mathbf{b}\) in an engineering context  
- Why matrix inverses are rarely used in numerical computation  
- Gaussian elimination and the idea of matrix factorization  
- LU decomposition and forward/back substitution  
- Solving linear systems using numerical software  
- The role of conditioning in solution accuracy  

---

## Learning Objectives

By the end of this module, you will be able to:

- Solve linear systems using appropriate numerical methods  
- Explain why some systems are more difficult to solve accurately than others  
- Use computational tools to solve \(\mathbf{A}\mathbf{x} = \mathbf{b}\) efficiently and reliably  
- Recognize the structure that underlies more advanced methods later in the course  

---

## Why This Module Matters

The ideas introduced here form the foundation for:

- iterative solvers  
- finite difference methods  
- finite volume methods  
- finite element methods  
- large-scale engineering simulations  

These techniques appear repeatedly throughout computational mechanics and scientific
computing, and they underpin many of the numerical methods studied later in the course.

---

## Module Materials

This module includes:
- lecture slides (PDF)
- companion Jupyter notebooks
- worked numerical examples
- homework problems applying direct solution methods

Refer to the module folders for specific files and instructions.