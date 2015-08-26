% This class is for the Journal of Open Research Software
% Copyright 2014 Abel Soares Siqueira
% under the Gnu Public License v3

\ProvidesClass{jors}[2014/09/15 jors]

\DeclareOption{10pt}{
  \PassOptionsToClass{\CurrentOption}{article}
}

\DeclareOption*{
  \ClassWarning{jors}{Unknown option '\CurrentOption'}
}

\ExecuteOptions{10pt}

\ProcessOptions\relax

\LoadClass[a4paper]{article}

\renewenvironment{abstract}{\normalsize \parindent .2in \ignorespaces}
  {\par\vspace{1pt}}

\RequirePackage{titlesec}
\RequirePackage{xcolor}

\newcommand{\twrule}{\rule{\textwidth}{1pt}\vspace{5pt} }
\renewcommand*{\familydefault}{\sfdefault}
\pagestyle{empty}

\titlespacing*{\section}{0pt}{\baselineskip}{\baselineskip}
\titlespacing*{\subsection}{0pt}{\baselineskip}{0pt}
\titlespacing*{\subsubsection}{0pt}{\baselineskip}{0pt}

\newcommand{\colorsection}[1]
  {\colorbox{cyan!50!white}{\parbox{\dimexpr\columnwidth-2\fboxsep}{(\thesection) #1}}}
\newcommand{\colorsectionnumberless}[1]
  {\colorbox{cyan!50!white}{\parbox{\dimexpr\columnwidth-2\fboxsep}{#1}}}
\newcommand{\bfandit}[1]{\textbf{\textit{#1}}}

\titleformat{\section}{\normalsize \bf}{}{0pt}{\colorsection}
\titleformat{name=\section,numberless}{\normalsize \bf}{}{0pt}{}
\titleformat{\subsection}{\normalsize \bf}{}{0pt}{}
\titleformat{\subsubsection}{\normalsize \bf}{}{0pt}{}
\titleformat{\paragraph}{\normalsize}{}{0pt}{\bfandit}

\newcommand{\Archive}{\subsection*{Archive}\vspace{\baselineskip}}
\newcommand{\CodeRepository}{\subsection*{Code Repository}\vspace{\baselineskip}}

\endinput
