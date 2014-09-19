\ProvidesClass{programmingcontests}
\LoadClassWithOptions{article}

\RequirePackage{../SharedData/importsreferences}
\RequirePackage{color,amsfonts,tikz,amssymb,graphicx,enumitem,xparse,ifthen,epstopdf,multicol,tablists,catchfile,varwidth,listings,fullpage,hyperref}
\usetikzlibrary{fit,patterns,snakes,calc,decorations,decorations.text,positioning,decorations.pathreplacing,matrix,arrows,automata}

\definecolor{mygreen}{rgb}{0,0.6,0}
\definecolor{mygray}{rgb}{0.5,0.5,0.5}
\definecolor{mymauve}{rgb}{0.58,0,0.82}

\lstset{ %
  backgroundcolor=\color{white},   % choose the background color; you must add \usepackage{color} or \usepackage{xcolor}
  basicstyle=\ttfamily\footnotesize,        % the size of the fonts that are used for the code
  breakatwhitespace=false,         % sets if automatic breaks should only happen at whitespace
  breaklines=true,                 % sets automatic line breaking
  captionpos=b,                    % sets the caption-position to bottom
  commentstyle=\color{mygreen},    % comment style
  deletekeywords={},               % if you want to delete keywords from the given language
  escapeinside={\%*}{*)},          % if you want to add LaTeX within your code
  extendedchars=true,              % lets you use non-ASCII characters; for 8-bits encodings only, does not work with UTF-8
  frame=none,                      % adds a frame around the code
  keepspaces=true,                 % keeps spaces in text, useful for keeping indentation of code (possibly needs columns=flexible)
  keywordstyle=\color{blue},       % keyword style
  language=Haskell,                % the language of the code
  morekeywords={*,...},            % if you want to add more keywords to the set
  numbers=left,                    % where to put the line-numbers; possible values are (none, left, right)
  numbersep=5pt,                   % how far the line-numbers are from the code
  numberstyle=\tiny\color{mygray}, % the style that is used for the line-numbers
  rulecolor=\color{black},         % if not set, the frame-color may be changed on line-breaks within not-black text (e.g. comments (green here))
  showspaces=false,                % show spaces everywhere adding particular underscores; it overrides 'showstringspaces'
  showstringspaces=false,          % underline spaces within strings only
  showtabs=false,                  % show tabs within strings adding particular underscores
  stepnumber=1,                    % the step between two line-numbers. If it's 1, each line will be numbered
  stringstyle=\color{mymauve},     % string literal style
  tabsize=2,                       % sets default tabsize to 2 spaces
  title=\lstname                   % show the filename of files included with \lstinputlisting; also try caption instead of title
}

\DeclareDocumentCommand{\pprob}{O{} O{} m m m m m}{
\section{#3\cite{#2}}
\label{prb:#1}
\subsection{Plot}
#4
\subsection{Task}
#5
\subsection{Example(s)}
#6
\subsection{Solution}
#7
\subsection{Code}
\lstinputlisting[language=haskell]{hs/#1.hs}
}

\newcommand{\terms}[1]{\index{#1}\emph{#1s}}

\newcommand{\note}[1]{\emph{#1}}

\AtEndDocument{
\bibliographystyle{alpha}
\bibliography{biblio.bib}
}