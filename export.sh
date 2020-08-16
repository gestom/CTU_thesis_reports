for i in $(ls *.tex|sed s/.tex//);do 
	pdflatex $i.tex;
	zip $i.zip $i.tex $(echo $i.png|sed s/report/logo/) $i.pdf
	mv $i.zip export/
done
