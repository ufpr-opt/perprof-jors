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

\renewenvironment{abstract}{\footnotesize \parindent .2in \ignorespaces}
  {\par\vspace{1pt}}


\newcommand{\twrule}{\rule{\textwidth}{1pt}\vspace{5pt} }

\endinput
