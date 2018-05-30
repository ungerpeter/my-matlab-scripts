## NMIT1 - Praktikum 11 - ungerpet

### Aufg2

**a)**

$f(x_1, x_2) = \begin{pmatrix}5x_1x_2 \\ x_1^2x_2^2 + x_1 +2x_2\end{pmatrix}, \begin{pmatrix}x_1 \\ x_2\end{pmatrix} = \begin{pmatrix}1 \\ 2\end{pmatrix}$

$Df(x_1, x_2) = \begin{pmatrix}\frac{\partial f_1}{\partial x_1}(x_1, x_2) && \frac{\partial f_1}{\partial x_2}(x_1, x_2) \\ \frac{\partial f_2}{\partial x_1}(x_1, x_2) && \frac{\partial f_2}{\partial x_2}(x_1, x_2)\end{pmatrix}$

$\frac{\partial f_1}{\partial x_1}(x_1, x_2) = 5x_2$

$\frac{\partial f_1}{\partial x_2}(x_1, x_2) = 5x_1$

$\frac{\partial f_2}{\partial x_1}(x_1, x_2) = 2x_1 \cdot x_2^2 + 2x_2 + 1$

$\frac{\partial f_2}{\partial x_2}(x_1, x_2) = x_1^2 \cdot 2x_2 + x_1 + 2$

$Df(x_1, x_2) = \begin{pmatrix}5x_2 && 5x_1 \\ 2x_1 \cdot x_2^2 \cdot 2x_2 + 1  && x_1^2 \cdot 2x_2 + x_1 + 2\end{pmatrix}$

$Df(1,2) = \begin{pmatrix}10 && 5 \\ 33  && 7\end{pmatrix}$



**b)**

$f(x_1, x_2, x_3) = \begin{pmatrix}ln(x_1^2 + x_2^2) + x_3^2 \\ exp(x_2^2 + x_3^2) + x_1^2 \\ \frac{1}{(x_3^2 + x_1^2)} + x_2^2 \end{pmatrix}, \begin{pmatrix}x_1 \\ x_2 \\ x_3 \end{pmatrix} = \begin{pmatrix}1 \\ 2 \\ 3\end{pmatrix}$

$Df(x_1, x_2, x_3) = \begin{pmatrix} \frac{\partial f_1}{\partial x_1} (x_1, x_2, x_3) && \frac{\partial f_1}{\partial x_2} (x_1, x_2, x_3) && \frac{\partial f_1}{\partial x_3} (x_1, x_2, x_3) \\ \frac{\partial f_2}{\partial x_1}(x_1, x_2, x_3) && \frac{\partial f_2}{\partial x_2} (x_1, x_2, x_3) && \frac{\partial f_2}{\partial x_3} (x_1, x_2, x_3) \\ \frac{\partial f_3}{\partial x_1} (x_1, x_2, x_3) && \frac{\partial f_3}{\partial x_2} (x_1, x_2, x_3) && \frac{\partial f_3}{\partial x_3} (x_1, x_2, x_3)\end{pmatrix}$

$\frac{\partial f_1}{\partial x_1}(x_1, x_2, x_3) = \frac{2x_1}{x_1^2 + x_2^2}$

$\frac{\partial f_1}{\partial x_2}(x_1, x_2, x_3) = \frac{2x_2}{x_1^2 + x_2^2}$

$\frac{\partial f_1}{\partial x_3}(x_1, x_2, x_3) = 2x_3$

$\frac{\partial f_2}{\partial x_1}(x_1, x_2, x_3) = 2x_1$

$\frac{\partial f_2}{\partial x_2}(x_1, x_2, x_3) = 2x_2 \cdot e^{(x_2^2 + x_3^2)}$

$\frac{\partial f_2}{\partial x_3}(x_1, x_2, x_3) = 2x_3 \cdot e^{(x_2^2 + x_3^2)}$

$\frac{\partial f_3}{\partial x_1}(x_1, x_2, x_3) = -\frac{2x_1}{(x_1^2 + x_3^2)^2}$

$\frac{\partial f_3}{\partial x_2}(x_1, x_2, x_3) = 2x_2$

$\frac{\partial f_3}{\partial x_1}(x_1, x_2, x_3) = -\frac{2x_3}{(x_1^2 + x_3^2)^2}$

$Df(x_1, x_2, x_3) = \begin{pmatrix} \frac{2x_1}{x_1^2 + x_2^2} && \frac{2x_2}{x_1^2 + x_2^2} && 2x_3 \\ 2x_1 && 2x_2 \cdot e^{(x_2^2 + x_3^2)} && 2x_3 \cdot e^{(x_2^2 + x_3^2)} \\ -\frac{2x_1}{(x_1^2 + x_3^2)^2} && 2x_2 && -\frac{2x_3}{(x_1^2 + x_3^2)^2}\end{pmatrix}$

$Df(1, 2, 3) = \begin{pmatrix} \frac{2}{5} && \frac{4}{5} && 6 \\ 2 && 4 \cdot e^{(13)} && 6 \cdot e^{(13)} \\ -\frac{2}{121} && 4 && -\frac{6}{121}\end{pmatrix}$

