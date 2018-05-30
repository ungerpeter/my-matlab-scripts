##  NMIT1 - P10 ungerpet



###Aufg1

**a)**

$A = \begin{pmatrix} 8 & 5 & 2 \\ 5 & 9 & 1 \\ 4 & 2 & 7 \end{pmatrix}​$

Auf Diagonaldominanz prüfen

$A_{0,0} > A_{0,1} + A_{0,2} \rightarrow 8 > 5 + 2$

$A_{1,1} > A_{1,0} + A_{1,2} \rightarrow 9 > 5 + 1$

$A_{2,2} > A_{2,0} + A_{2,1} \rightarrow 7 > 4 + 2$

$\rightarrow$  Zeilensummenkriterium erfüllt$\rightarrow$ Jacobi konvergiert für $A$



**b)**

$ Ax = b; b = \begin{pmatrix}19 \\ 5 \\ 34\end{pmatrix}$

$A = L + D + R => L = \begin{pmatrix} 0 & 0 & 0 \\ 5 & 0 & 0 \\ 4 & 2 & 0 \end{pmatrix}; D = \begin{pmatrix} 8 & 0 & 0 \\ 0 & 9 & 0 \\ 0 & 0 & 7 \end{pmatrix}; R = \begin{pmatrix} 0 & 5 & 2 \\ 0 & 0 & 1 \\ 0 & 0 & 0 \end{pmatrix}$

$x^{(n+1)} = -D^{-1}((L + R) * x^{(n)} - b)$

$= -\begin{pmatrix}1/8 & 0 & 0 \\ 0 & 1/9 & 0 \\ 0 & 0 & 1/7\end{pmatrix} * (\begin{pmatrix}0 & 5 & 2 \\ 5  & 0 & 1 \\ 4 & 2 & 0\end{pmatrix} * x^{(n)} - \begin{pmatrix}19 \\ 5 \\ 34\end{pmatrix})$



| $i$       | $0$                                         | $1$                                                      | $2$                                                       | $3$                                                        |
| --------- | ------------------------------------------- | -------------------------------------------------------- | --------------------------------------------------------- | ---------------------------------------------------------- |
| $x^{(i)}$ | $\begin{pmatrix} 1 \\ -1 \\ 3\end{pmatrix}$ | $\begin{pmatrix} 2.25 \\ -0,3333 \\ 4.5714\end{pmatrix}$ | $\begin{pmatrix} 1,4405 \\ 1,2024 \\ 3,6667\end{pmatrix}$ | $\begin{pmatrix} 2,2098 \\ -0,6521 \\ 4,3776\end{pmatrix}$ |

(Siehe Unger_Peter_06_S10_Aufg1.m)



**c)**

$B = -D^{-1}(L + R)$

$||x^{(n)} - \tilde{x}|| ≤ \frac{||B||}{||1 - B||} * ||x^{(n)} - x^{(n-1)}||$

$\rightarrow abs. Fehler: 5,3854$



**d)**

$B = -D^{-1}(L + R)$

$tol = 10^{-4}$

$||x^{(n)} - \tilde{x}|| ≤ \frac{||B||^n}{||1 - B||} * ||x^{(1)} - x^{(0)}|| ≤ tol$

$=> ||B||^n * ||x^{(1)} - x^{(0)}|| ≤ 10^{-4} * (1 - ||B||) =$

$||B||^n ≤ \frac{10^{-4} * (1 - ||B||)}{||x^{(1)} - x^{(0)}||} = $

$n * log(||B||) ≤ log(\frac{10^{-4} * (1 - ||B||)}{||x^{(1)} - x^{(0)}||}) = $

$n ≤ \frac{log(\frac{10^{-4} * (1 - ||B||)}{||x^{(1)} - x^{(0)}||})}{log(||B||)} = $

$n ≤ 89.1778 \implies 90 \space Schritte$



**e)**

Rechenweg wie d) - statt $||x^{(1)} - x^{(0)}|| \implies ||x^{(3)} - x^{(2)}||$ einsetzen.
$n ≤ 84,8696 \implies 85 \space Schritte$