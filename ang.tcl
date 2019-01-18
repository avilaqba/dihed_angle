set output1 [ open  704.txt w]
set output2 [ open  745.txt w]
set output3 [ open  764.txt w]

set List [list 1e3g  	1t65  	1t7m  	1xq3  	2ax6  	2ihq  	2pir  	2pkl  	2ylo  	3b66  	3rlj  	4k7a  	4ofu  	4oiu  	4okw  	5v8q  1gs4  	1t73  	1t7r  	1z95  	2ax7  	2nw4  	2pit  	2pnu  	2ylp  	3b67  	3rll  	4oea  	4ogh  	4oj9  	4okx  1i37  	1t74  	1t7t  	2am9  	2ax8  	2oz7  	2piu  	2q7i  	2ylq  	3b68  	3v49  	4oed  	4oh5  	4ojb  	4olm  1i38  	1t76  	1xj7  	2ama  	2ax9  	2pio  	2piv   	2z4j    3g0w  	3v4a  	 4oey  	4oh6     4ok1  	  4ql8  1t5z  	1t79  	1xnn  	2amb  	2axa  	2pip  	2piw  	2qpy  	3b5r  	3l3x  	3zqt  	4oez  	4oha  	4okb  	5t8e  1t63  	1t7f  	1xow   	2hvc  	2piq  	2pix  	2yhd  	3b65    4hlw  	 4ofr  	 4oil     4okt  	 5t8j   ]
foreach P $List {
    mol load pdb ${P}.pdb
	set 704_N [atomselect top "protein and resid 704 and name N"]	
	set 704_CA [atomselect top "protein and resid 704 and name CA"]	
	set 704_CB [atomselect top "protein and resid 704 and name CB"]	
	set 704_CG [atomselect top "protein and resid 704 and name CG"]	
	set 704_CD1 [atomselect top "protein and resid 704 and name CD1"]	
    set 704_1 [$704_N get index]
    set 704_2 [$704_CA get index]
    set 704_3 [$704_CB get index]
    set 704_4 [$704_CG get index]
    set 704_5 [$704_CD1 get index]
    set angle704_1 [ measure dihed [list $704_1 $704_2 $704_3 $704_4]] 
    set angle704_2 [ measure dihed [list $704_2 $704_3 $704_4 $704_5]] 
	
	set 745_N [atomselect top "protein and resid 745 and name N"]	
	set 745_CA [atomselect top "protein and resid 745 and name CA"]	
	set 745_CB [atomselect top "protein and resid 745 and name CB"]	
	set 745_CG [atomselect top "protein and resid 745 and name CG"]	
	set 745_SD [atomselect top "protein and resid 745 and name SD"]	
    set 745_1 [$745_N get index]
    set 745_2 [$745_CA get index]
    set 745_3 [$745_CB get index]
    set 745_4 [$745_CG get index]
    set 745_5 [$745_SD get index]
    set angle745_1 [ measure dihed [list $745_1 $745_2 $745_3 $745_4]] 
    set angle745_2 [ measure dihed [list $745_2 $745_3 $745_4 $745_5]] 
	
	set 764_N [atomselect top "protein and resid 764 and name N"]	
	set 764_CA [atomselect top "protein and resid 764 and name CA"]	
	set 764_CB [atomselect top "protein and resid 764 and name CB"]	
	set 764_CG [atomselect top "protein and resid 764 and name CG"]	
	set 764_CD1 [atomselect top "protein and resid 764 and name CD1"]	
    set 764_1 [$764_N get index]
    set 764_2 [$764_CA get index]
    set 764_3 [$764_CB get index]
    set 764_4 [$764_CG get index]
    set 764_5 [$764_CD1 get index]
    set angle764_1 [ measure dihed [list $764_1 $764_2 $764_3 $764_4]] 
    set angle764_2 [ measure dihed [list $764_2 $764_3 $764_4 $764_5]] 
   
	puts $output1 "$angle704_1 $angle704_2"
	puts $output2 "$angle745_1 $angle745_2"
	puts $output3 "$angle764_1 $angle764_2"
    mol delete all

    }

close $output1
close $output2
close $output3