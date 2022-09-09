\ProvidesClass{dissertation}

% inherits book
\LoadClassWithOptions{book}

% update geometry
\usepackage[margin=1.5in]{geometry}

% project directories
\usepackage{import}

% basic packages for math stuff
\usepackage{array}
\usepackage[inline]{enumitem}
\usepackage{float}

% colors
\usepackage{xcolor}
\definecolor{myblue}{HTML}{2980B9}
\definecolor{mydarkblue}{HTML}{1B557A}

% links
\usepackage{hyperref}
\hypersetup{
  colorlinks,
  linkcolor=mydarkblue,
  citecolor=mydarkblue,
  urlcolor=mydarkblue,
}

% enumitem environments
\newenvironment{enuminline}{
  \begin{enumerate*}[label=(\roman*), mode=unboxed, itemjoin=\\]
}{
  \end{enumerate*}
}

% chapters are roman numerals
\renewcommand\thechapter{\Roman{chapter}}

% section number depth
\setcounter{secnumdepth}{3}

% equation counter includes chapter and resets within chapter
\counterwithin{equation}{chapter}
\renewcommand{\theequation}{\thechapter.\arabic{equation}}

% theorem environments
\usepackage{aliascnt}
\newcounter{environment}[chapter]
\counterwithin{environment}{chapter}
\newaliascnt{theorem}{environment}
\newaliascnt{proposition}{environment}
\newaliascnt{lemma}{environment}
\newaliascnt{corollary}{environment}
\newaliascnt{remark}{environment}
\newaliascnt{definition}{environment}
\usepackage[thmmarks]{ntheorem}{
  \theoremseparator{.}
  \theorembodyfont{\itshape}
  \newtheorem{theorem}{Theorem}[chapter]
  \newtheorem{proposition}{Proposition}[chapter]
  \newtheorem{lemma}{Lemma}[chapter]
  \newtheorem{corollary}{Corollary}[chapter]
  \newtheorem{remark}{Remark}[chapter]
  \newtheorem{definition}{Definition}[chapter]
  \theoremheaderfont{\itshape}
  \theorembodyfont{}
  \newtheorem*{proof}{Proof}
}
\newenvironment{myenv}[2][]{%
  \refstepcounter{environment}%
  \def\tmp{#1}%
  \noindent
  {\bfseries \capitalisewords{#2}~\theenvironment.}
  \itshape
  \ifx\tmp\empty
  \else
    \,{\emph{(\tmp)}}\,%
  \fi
}{
  \vskip1em
}


% bibliography
\usepackage{natbib}
\usepackage{bibentry}
\bibliographystyle{alpha}
