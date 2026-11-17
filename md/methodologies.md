# Methodologies

``` {=latex}
\label{ch3:methodologies}
```

## Introduction

``` {=latex}
\lipsum[11]
```

## Research Approach

``` {=latex}
\lipsum[12] \citep{dummy2017misc}
```

### Experimental Setup

``` {=latex}
\lipsum[13]
```

Each experiment is repeated $n$ times, and the detection accuracy $A$ is recorded together with the false positive rate $F_{p}$.

``` {=latex}
\addsymbol{$n$}{Number of experimental runs per configuration}
\addsymbol{$A$}{Detection accuracy of the proposed model}
\addsymbol{$F_{p}$}{False positive rate of the detection model}
```

### Learning Phase

``` {=latex}
\lipsum[14]
```

The learning process minimises the cross-entropy loss $L$ over the training samples:

``` {=latex}
\addsymbol{$L$}{Cross-entropy loss function}

\begin{equation}
L = -\frac{1}{n}\sum_{i=1}^{n} y_{i}\log\hat{y}_{i}
\label{eq:example}
\end{equation}
```

where $y_{i}$ is the true label and $\hat{y}_{i}$ is the predicted label of sample $i$.

``` {=latex}
\addsymbol{$y_{i}$}{True label of the $i$-th training sample}
\addsymbol{$\hat{y}_{i}$}{Predicted label of the $i$-th training sample}
```

### Detection Phase

``` {=latex}
\lipsum[15]
```

## Evaluation

``` {=latex}
\lipsum[16]
```

Results are reported at a significance level of $\alpha = 0.05$.

``` {=latex}
\addsymbol{$\alpha$}{Significance level used in the statistical test}
```

## Summary

``` {=latex}
\lipsum[17]
```
