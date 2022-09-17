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

% section number depth
\setcounter{secnumdepth}{3}

% equation counter includes chapter+section and resets within chapter
\counterwithin{equation}{section}

% https://tex.stackexchange.com/questions/232051/numbering-equations-in-sections-and-sub-sections
\let\oldsection\section
\renewcommand{\section}{
  \renewcommand{\theequation}{\thesection.\arabic{equation}}
  \oldsection
}
\let\oldsubsection\subsection
\renewcommand{\subsection}{
  \renewcommand{\theequation}{\thesubsection.\arabic{equation}}
  \oldsubsection
}


% theorem environments
\usepackage{aliascnt}
%\newcounter{environment}[chapter]
%\counterwithin{environment}{chapter}
\newaliascnt{theorem}{equation}
\newaliascnt{proposition}{equation}
\newaliascnt{lemma}{equation}
\newaliascnt{corollary}{equation}
\newaliascnt{remark}{equation}
\newaliascnt{definition}{equation}
\newaliascnt{example}{equation}
\newaliascnt{assumption}{equation}
\usepackage{ntheorem}{
  \theoremseparator{.}
  \theorembodyfont{\itshape}
  \newtheorem{theorem}{Theorem}[section]
  \newtheorem{proposition}{Proposition}[section]
  \newtheorem{lemma}{Lemma}[section]
  \newtheorem{corollary}{Corollary}[section]
  \newtheorem{remark}{Remark}[section]
  \newtheorem{definition}{Definition}[section]
  \newtheorem{example}{Example}[section]
  \newtheorem{assumption}{Assumption}[section]
  \theoremheaderfont{\itshape}
  \theorembodyfont{}
  \newtheorem*{proof}{Proof}
}

% bibliography
\usepackage{natbib}
\usepackage{bibentry}
\bibliographystyle{alpha}
