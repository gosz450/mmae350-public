## Module Overview  
**1D Heat Conduction**

This module introduces one-dimensional heat conduction as a model problem for
time-dependent partial differential equations arising in engineering analysis.
The heat equation serves as a canonical example for understanding diffusion
processes, numerical time integration, and stability considerations that appear
throughout computational mechanics.

We begin by formulating the one-dimensional heat equation from physical
principles and discussing the role of material properties, boundary conditions,
and initial conditions. The equation is then discretized in space using finite
differences, leading to a system of ordinary differential equations in time.

Two time integration strategies are examined in detail. First, the **Forward
Time, Centered Space (FTCS)** scheme is introduced as a fully explicit method,
highlighting its simplicity as well as its conditional stability requirements.
We then develop the **Crank–Nicolson** method, a second-order accurate,
implicit time integration scheme that improves stability and accuracy for
diffusion-dominated problems.

Throughout the module, emphasis is placed on the connection between the
continuous governing equations, their discrete approximations, and the
resulting numerical behavior, including stability, accuracy, and computational
cost.

---

## Learning Objectives

After completing this module, you will be able to:

- Derive the one-dimensional heat equation from conservation principles  
- Discretize the heat equation using finite difference methods  
- Implement the FTCS scheme and identify its stability limitations  
- Formulate and implement the Crank–Nicolson method  
- Analyze numerical stability, accuracy, and time-step restrictions  

---

## Module Materials

- Lecture slides  
- Companion Jupyter notebooks  
- Assigned readings and reference material  
- Homework and computational exercises  