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

## Project Timeline

The Gantt chart serves as a planning and monitoring tool that maps out the entire
project across its two academic semesters. Instead of listing deadlines as plain text, the
chart breaks the work into visible phases, so the duration of each task, the order in which
activities follow one another, and the official assessment checkpoints can all be read at a
glance. It also acts as a progress tracker throughout the semester: any task that runs behind
its planned slot is immediately noticeable, which makes early corrective action possible.

``` {=latex}
\textbf{Appendix \ref{app:A}} presents the planned schedule for this project.
```
The first semester covers the study and documentation stages, namely Chapters 1 to 3 together with a Proof of
Concept, while the second semester is dedicated to the complete implementation of the ap-
plication, field data collection, and evaluation. The milestones marked in red indicate the
official deadlines enforced through KALAM: EV1 (15 November), the examiner proposal
(1 January), and EV3 (31 January) for PSM 1, followed by the three PSM 2 assessments.

## Summary

``` {=latex}
\lipsum[17]
```

## Research Design

The overall research design is summarised in Figure 3.1.

``` {=latex}
\begin{figure}[htbp]
\centering
\begin{tikzpicture}[
    node distance=1.2cm,
    startstop/.style={rectangle, rounded corners, minimum width=3cm, minimum height=1cm, text centered, draw=black, fill=red!30},
    process/.style={rectangle, minimum width=3cm, minimum height=1cm, text centered, draw=black, fill=blue!30},
    decision/.style={diamond, minimum width=3cm, minimum height=1cm, text centered, draw=black, fill=green!30},
    arrow/.style={thick,->,>=stealth}
]
\node (start) [startstop] {Start};
\node (lit) [process, below of=start] {Literature Review};
\node (problem) [decision, below of=lit] {Problem identified?};
\node (design) [process, below of=problem, yshift=-0.5cm] {Design solution};
\node (implement) [process, below of=design] {Implement};
\node (evaluate) [process, below of=implement] {Evaluate};
\node (end) [startstop, below of=evaluate] {End};

\draw [arrow] (start) -- (lit);
\draw [arrow] (lit) -- (problem);
\draw [arrow] (problem) -- node[anchor=east] {Yes} (design);
\draw [arrow] (problem.east) -- node[anchor=south] {No} ++(1.5,0) |- (lit);
\draw [arrow] (design) -- (implement);
\draw [arrow] (implement) -- (evaluate);
\draw [arrow] (evaluate) -- (end);
\end{tikzpicture}
\caption{Research design flowchart}
\label{fig:flowchart}
\end{figure}
```
