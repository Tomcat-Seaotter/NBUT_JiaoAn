%orginally designed by Zonaldo
\ProvidesClass{expreport}
\LoadClass{ctexart}
% \RequirePackage{xeCJK}
\RequirePackage{CJKnumb}
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage{enumitem}
\RequirePackage{listings}
\RequirePackage{xcolor}
\RequirePackage{array}
\RequirePackage{mathtools}
\RequirePackage{float}
% \RequirePackage{indentfirst}
% \RequirePackage{zhnumber}
% \RequirePackage{booktabs}
% \RequirePackage{indentfirst}
% \RequirePackage{bbding}

\linespread{1.2}
\geometry{top=1in,bottom=1in,left=1in,right=1in}
\setcounter{secnumdepth}{3}
\renewcommand\thesection{\CJKnumber{\arabic{section}}、\hspace{0pt}}
\renewcommand\thesubsection{\arabic{subsection}.}
\renewcommand\thesubsubsection{\alph{subsubsection})}
\renewcommand{\abstractname}{\zihao{2} 说\quad 明}
\setlist[enumerate,1]{label=(\arabic*)}
\setlist[enumerate,2]{label=\alph*.}

\setCJKmainfont[
  Path = fonts/ ,
  Extension = .ttf ,
  BoldFont = SimHei ,
  ItalicFont = simkai ,
]{SimSun}

\setlength{\parindent}{2em}


 \titleformat*{\section}{\zihao{-3}\bfseries}


\titleformat*{\subsection}{\zihao{4}\bfseries}
\titleformat*{\subsubsection}{\zihao{-4}}
\graphicspath{{figures/}{figure/}{pictures/}%
{picture/}{pic/}{pics/}{image/}{images/}}

\titlespacing{\subsection}{1em}{*4}{*1.5}
\titlespacing{\subsubsection}{1em}{*4}{*1.5}


% 信息
\newcommand\major[1]{\def\@major{#1}}
\newcommand\course[1]{\def\@course{#1}}
\newcommand\name[1]{\def\@name{#1}}
\newcommand\stuid[1]{\def\@stuid{#1}}
\newcommand\college[1]{\def\@college{#1}}
\newcommand\classroom[1]{\def\@classroom{#1}}
\newcommand\instructor[1]{\def\@instructor{#1}}
\renewcommand\date[1]{\def\@date{#1}}
\newcommand\lab[1]{\def\@lab{#1}}
\newcommand\grades[1]{\def\@grades{#1}}
\newcommand\expname[1]{\def\@expname{#1}}
\newcommand\exptype[1]{\def\@exptype{#1}}
\newcommand\partner[1]{\def\@partner{#1}}
\newcommand\loc[1]{\def\@loc{#1}}
\newcommand\group[1]{\def\@group{#1}}
\newcommand\ttitle[1]{\def\@ttitle{#1}}

% 页眉
\pagestyle{empty}
% \lhead{实验名称：\qquad}
% \rhead{课程名称：大数据原理与应用}


% 下划线定义
\def\ul[#1]#2{
  \underline{\hbox to #1{\hfil#2\hfil}}}



% 封面
\newcommand{\makecover}{
  \begin{center}
    \bfseries\zihao{-1}{\vspace{-0.5cm} \bfseries\kaishu{\textbf{\@title}}}\\
    \vspace{2.5cm}
    \bfseries\kaishu\zihao{0}{\textbf{教}} \\
    \vspace{4.5cm}
    \bfseries\kaishu\zihao{0}{\textbf{案}}  
    \begin{center}
      \Large
      \linespread{1}
       \zihao{3}
      \renewcommand\arraystretch{1.6}
    \vspace{2.5cm}
      \begin{tabular}{p{8cm}p{8cm}}
      \multicolumn{2}{l}{课程\ul[200pt]{\@course}}\\
      \\     
      \end{tabular}
      
      \begin{tabular}{p{8cm}p{8cm}}
      \multicolumn{2}{l}{\textbf{20\ul[20pt]{~22~} -20\ul[20pt]{~23~}学年第\ul[20pt]{~二~}学期}}\\   
      \end{tabular}
    \end{center}
  \end{center}
     
    \begin{center}
      \Large
      \linespread{1}
       \zihao{3}
      \renewcommand\arraystretch{1.6}
      \vspace{1cm}
      \begin{tabular}{p{8cm}p{8cm}}
      \multicolumn{2}{l}{\textbf{班级\ul[200pt]{\@classroom} }}\\
      \multicolumn{2}{l}{\textbf{教师 \ul[200pt]{\@instructor} }}\\
      \\     
      \end{tabular}
    \end{center}
    \vspace{2cm}
  \end{center}
  \thispagestyle{empty}
  \clearpage
}
