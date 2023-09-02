%-------------------------------------------------------------------------------
%                Identification
%-------------------------------------------------------------------------------

\ProvidesClass{resume_config}[2023 v1.0 resume_config]
\NeedsTeXFormat{LaTeX2e}

%-------------------------------------------------------------------------------
%                Class options
%-------------------------------------------------------------------------------

\LoadClass[10pt]{article} % adjust font size here

%-------------------------------------------------------------------------------
%                Packages
%-------------------------------------------------------------------------------

\RequirePackage{geometry}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{fontspec}
\RequirePackage{color}
\RequirePackage[english]{babel}
\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage{multicol}
\RequirePackage{pifont}
\RequirePackage{fontawesome5}
\RequirePackage{fancyhdr}
\RequirePackage[usenames,dvipsnames]{xcolor}
\RequirePackage{etoolbox,refcount}
\RequirePackage{calc}
\RequirePackage{enumitem}
\RequirePackage{fancyhdr}
\RequirePackage{etoolbox}
\RequirePackage{setspace}
\RequirePackage{lipsum}
\usepackage{ifthen} % Required for ifthenelse statements

\setmainfont{TeX Gyre Heros} % adjust font style here


%-------------------------------------------------------------------------------
%                Formatting
%-------------------------------------------------------------------------------

\setlength{\tabcolsep}{0in}

\pagenumbering{gobble}
\pagestyle{empty}

\raggedbottom
\raggedright

\geometry{
    paper=letterpaper, % Paper size, change to letterpaper for US letter size
    top=0.5in, % Top margin
    bottom=0.5in, % Bottom margin
    left=0.5in, % Left margin
    right=0.5in, % Right margin
    headheight=0.75cm, % Header height
    footskip=1cm, % Space from the bottom margin to the baseline of the footer
    headsep=0.5cm % Space from the top margin to the baseline of the header
}

% section title format
\titleformat{\section}%
    {\vspace{-4pt}\scshape\raggedright\large\bfseries}% format
    {}% label
    {0em}% space between label and title
    {}% before code
    [\color{black}\titlerule\vspace{-5pt}]% after code

%-------------------------------------------------------------------------------
%                Custom Commands
%-------------------------------------------------------------------------------

\newcommand{\WorkExperience}[7]{
    \noindent
    \begin{tabular*}{\textwidth}{@{}l @{\extracolsep{\fill}} r}
        \textbf{#1} at \textbf{#2} & \textit{#3} \\
        \textit{Team: #5} & #4 \\

    \end{tabular*}
    %\setlength{\itemsep}{-0.5em} \vspace{-0.5em}
    \begin{itemize}[noitemsep, topsep=1pt, leftmargin=1.25em, label={$\bullet$}]
        #6
        \begin{itemize} [noitemsep, topsep=0pt, leftmargin=1.25em, label={$\cdot$}]
        #7
        \end{itemize}
    \end{itemize}
}

\newcommand{\Project}[5]{
    \noindent
    \begin{tabular*}{\textwidth}{@{}l @{\extracolsep{\fill}} r}
        \textbf{#1} & \textit{#2} \\
    \end{tabular*}
    %\setlength{\itemsep}{-0.5em} \vspace{-0.5em}
    \begin{itemize}[noitemsep, topsep=1pt, leftmargin=1.25em, label={$\bullet$}]
        #3
        \begin{itemize} [noitemsep, topsep=0pt, leftmargin=1.25em, label={$\cdot$}]
            #4
        \end{itemize}
    \end{itemize}
    \textit{Key Learnings: #5}
}

\newcommand{\Header}[5]{
    \fancyhf{}
    \begin{center}
        {\Huge\textbf{\textsc{\textcolor{NavyBlue}{#1}}}}\\[4pt]
        \textcolor{black}{
            #2 $|$ \href{mailto:#3}{#3} $|$ \href{https://linkedin.com/in/#4}{linkedin.com/in/#4} $|$ \href{https://github.com/#5}{github.com/#5}
        }\\[3pt]
    \end{center}
    \vspace{-15pt}
}

\newcommand{\Certification}[3]{
    \noindent
    \textbf{#1} $|$ {#2}\hfill \textit{#3}\\
}

\newcommand{\EducationExperience}[5]{
    \noindent
    \begin{tabular*}{\textwidth}{@{}l @{\extracolsep{\fill}} r}
        \textbf{#1} & \textit{#3} \\
        #2 & #4 \\
        \textit{#5} \\
    \end{tabular*}
}

\NewDocumentEnvironment{SkillsList}{O{4} O{1in} +b}{
\vspace{-12pt}
    \setlength{\columnsep}{10pt}
    \begin{multicols}{#1}
        \begin{itemize}[noitemsep, topsep=0pt, leftmargin=1.5em, label={$-$}]
            \small{
                #3
                }
        \end{itemize}
    \end{multicols}
}{}

\newcommand{\SkillItem}[2]{\item \textbf{#1}{#2}}

\newcommand{\SkillList}[1]{
    \begin{itemize}[label={}, itemsep=-0.2em, leftmargin=0em]
                #1
        \end{itemize}
}