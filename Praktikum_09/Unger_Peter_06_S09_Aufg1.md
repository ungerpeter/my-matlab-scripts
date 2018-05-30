## Aufg1



**a)**

$||x-\tilde{x}||_{\infty} ≤ ||A^{-1}||_{\infty}*||b-\tilde{b}||$

$||x-\tilde{x}||_{\infty} ≤ ||\begin{pmatrix}20000 && 30000 && 10000 \\ 10000 && 17000 && 6000 \\ 2000 && 3000 && 2000\end{pmatrix}^{-1}||_{\infty}*||b-\tilde{b}||$

$||x-\tilde{x}||_{\infty} ≤ 1,4 * 10^{-3} * 10^5$

$||x-\tilde{x}||_{\infty} ≤ 140$



$\frac{||x-\tilde{x}||_{\infty}}{||x||_{\infty}} ≤ \frac{||A||_{\infty} * ||A^{-1}||_{\infty} * ||b-\tilde{b}||_{\infty}}{||b||_{\infty}}$

$\frac{||x-\tilde{x}||_{\infty}}{||x||_{\infty}} ≤ \frac{6*10^4 * 1,4*10^{-3}*10^5}{5,2*10^6} = 1,615$

$cond(A) = ||A||_{\infty} * ||A^{-1}||_{\infty} = 1,615$



**b)**

$\sigma := \frac{cond(A) * ||A - \tilde{A}||_{\infty}}{||A||_{\infty}} = 0,14$

$\frac{||x-\tilde{x}||_{\infty}}{||x||_{\infty}} ≤ \frac{cond(A)}{\sigma} * \begin{pmatrix}\frac{||A-\tilde{A}||_{\infty}}{||A||_{\infty}} + \frac{||b-\tilde{b}||_{\infty}}{||b||_{\infty}}\end{pmatrix}$

$\frac{||x-\tilde{x}||_{\infty}}{||x||_{\infty}} ≤ 2,041$



**c)**

$x = \begin{pmatrix}22 \\ 88 \\ 264\end{pmatrix}$

$\tilde{x} = \begin{pmatrix}7,383 \\ 58,766 \\ 395,553\end{pmatrix}$

$\frac{||x-\tilde{x}||_{\infty}}{||x||_{\infty}} = \frac{131,553}{264} = 0.498$



