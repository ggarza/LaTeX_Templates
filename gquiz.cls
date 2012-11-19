\ProvidesClass{gquiz}

\LoadClass{article}

\RequirePackage{amsmath}
\RequirePackage{kmath}
\RequirePackage{tgbonum}
\renewcommand{\alpha}{\alphaup}
% \RequirePackage{kpfonts}
% \RequirePackage[oldstylemath,oldstylenums]{kpfonts}
% \RequirePackage[sc]{mathpazo}
% \renewcommand{\ttdefault}{lmtt}

% \IfFileExists{mathpazo.sty}{\RequirePackage[osf,sc]{mathpazo}}{}
\IfFileExists{helvet.sty}{\RequirePackage[scaled=0.90]{helvet}}{}
\IfFileExists{beramono.sty}{\RequirePackage[scaled=0.85]{beramono}}{}
% \RequirePackage[T1]{fontenc}
\RequirePackage{textcomp}


\RequirePackage[T1]{fontenc}
\RequirePackage{graphicx}
\RequirePackage[top=1.0in,bottom=0.8in,left=1.0in,right=1.0in]{geometry}
\RequirePackage{microtype}
\RequirePackage{fancybox}
\RequirePackage{paralist}
\RequirePackage{siunitx}
\sisetup{%
detect-all= true,
}%
\RequirePackage{booktabs}
\RequirePackage{tikz}
\usepackage[nohdr]{mathexam}

\RequirePackage{ifthen}
\RequirePackage{lastpage}
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\rfoot{\ifthenelse{\value{page}=\pageref{LastPage}}{}{Turn the Page.}}
\lhead{\theexam}
\rhead{Page \thepage~of \pageref{LastPage}}
\cfoot{}

\fancypagestyle{plain}{%
   \fancyhead{} % get rid of headers
   \renewcommand{\headrulewidth}{0pt} % and the line
}


\newcommand{\theclass}{renew the {\itshape \textbackslash theclass} command}
\newcommand{\theexam}{renew the {\itshape \textbackslash theexam} command}
\newcommand{\thedate}{renew the {\itshape \textbackslash thedate} command}

\newcommand{\theinstructions}{%
Try to answer the questions in the space provided.  For short answer questions
you must show all essential work clearly to get full credit.  Credit may be
awarded for partial answers.
}


\newcommand{\headerbox}{%
  \doublebox{\parbox{0.98\textwidth}{\centering \normalsize
      \theinstructions
  }}
}

\newcommand{\nameline}{%
\noindent \makebox[\textwidth]{Name and Student ID: \hrulefill \hrulefill
  \hrulefill \hrulefill \; Section: \hrulefill}
}

\newcommand{\headersize}{\large}

\newcommand{\quizheader}{%
\nameline
\begin{center}{\headersize
  \theclass~---~\theexam\\
    \thedate\\
  }
\headerbox
\end{center}
}


\AtBeginDocument{%
\thispagestyle{plain}%
\quizheader%
}


\renewcommand{\section}{\@startsection
{section}%                   % the name
{1}%                         % the level
{0mm}%                       % the indent
{-\baselineskip}%            % the before skip
{0.5\baselineskip}%          % the after skip
{\normalfont\Large}}         % the style
