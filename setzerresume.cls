\LoadClass{article}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{setzerresume}[2017/10/15 Custom resume class]

\RequirePackage{titlesec}
\RequirePackage{kpfonts}
\RequirePackage{xifthen}% provides \isempty test

\titleformat{\section}         % Customise the \section command 
{\large\scshape\bfseries\raggedright} % Make the \section headers large (\Large),
                             % small capitals (\scshape) and left aligned (\raggedright)
{}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
{}                           % Can be used to insert code before the heading
[\titlerule]                 % Inserts a horizontal line after the heading

\titleformat{\subsection}
{\scshape\raggedright}
{}{0em}
{}

\newcommand{\twopartsection}[2]{%
\section[#1]{#1 \hfill #2}%
}

\newcommand{\twopartsubsection}[2]{%
\subsection[#1]{#1 \hfill #2}%
}

\newcommand{\jobheading}[4]{
    {\scshape {\large{\flushleft\bfseries #1} \hfill #2 }
    \\
    #3 \hfill #4 }

}

\newcommand{\name}[1]{
    \centerline{\Large{#1}}
}

% \newcommand{\contact}[3]{
%     #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3
% }

\newcommand{\contact}[3]{
    \centerline {#1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3}
}

\newcommand{\itemanddate}[2]{
  {\scshape{\textbf #1} \null\hfill #2}
}

\newcommand{\mailto}[1]{
  \href{mailto://#1}{#1}
}

\newcommand{\linkedin}[1]{
  \href{https://linkedin.com/in/#1}{linkedin.com/in/#1}
}

% \newcommand{\itemanddate}[3][2]{
% 
%     \ifthenelse{\isempty{#3}}{
%         {\scshape{\textbf #1} \null\hfill #2}
%     } % if #3 is empty
%     {
%         {\scshape{\textbf #1} \null\hfill #2}
%         \\
%         #3
%     } % if #3 is not empty
%         
% }
