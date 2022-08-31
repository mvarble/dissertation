\ProvidesClass{dissertation}

% inherits book
\LoadClass{book}

% update geometry
\usepackage[margin=1.5in]{geometry}

% project directories
\usepackage{import}

% basic packages for math stuff
\usepackage{array}
\usepackage[inline]{enumitem}
\usepackage{float}
\usepackage{amsmath}
\allowdisplaybreaks

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

% section number depth
\setcounter{secnumdepth}{3}

% equation counter includes chapter and resets within chapter
\usepackage{chngcntr}
\counterwithin{equation}{chapter}
\renewcommand{\theequation}{\thechapter.\arabic{equation}}

% theorem environments
\newcommand{\qed}{\hspace*{\fill}$\square$}
\usepackage{tcolorbox}
\usepackage{mfirstuc}
\usepackage{chngcntr}
\newcounter{environment}[chapter]
\counterwithin{environment}{chapter}
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

\newenvironment{theorem}[1][]{\begin{myenv}[#1]{theorem}}{\end{myenv}}
\newenvironment{corollary}[1][]{\begin{myenv}[#1]{corollary}}{\end{myenv}}
\newenvironment{proposition}[1][]{\begin{myenv}[#1]{proposition}}{\end{myenv}}
\newenvironment{lemma}[1][]{\begin{myenv}[#1]{lemma}}{\end{myenv}}
\newenvironment{remark}[1][]{\begin{myenv}[#1]{remark}}{\end{myenv}}
\newenvironment{example}[1][]{\begin{myenv}[#1]{example}}{\end{myenv}}
\newenvironment{formulation}[1][]{\begin{myenv}[#1]{formulation}}{\end{myenv}}
\newenvironment{question}[1][]{\begin{myenv}[#1]{question}}{\end{myenv}}
\newenvironment{definition}[1][]{\begin{myenv}[#1]{definition}}{\end{myenv}}
\newenvironment{assumption}[1][]{\begin{myenv}[#1]{assumption}}{\end{myenv}}

\newenvironment{proof}[1][]{%
  \def\tmp{#1}%
  \par\noindent{%
    \bfseries Proof%
    \ifx\tmp\empty
      .
    \else
      \,of #1.
    \fi
  }
  \ignorespaces
}{\vskip1em}

\newcommand{\linkProof}[1]{\par\hyperref[proof:#1]{See proof.}}

% bibliography
\usepackage{natbib}
\usepackage{bibentry}
\bibliographystyle{alpha}
