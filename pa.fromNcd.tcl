
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name Assignment1a -dir "C:/Users/phil/Dropbox/Uni/3rd Year/VHDL/VHDL-Assignment1-master/planAhead_run_1" -part xc6slx16csg324-2
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "C:/Users/phil/Dropbox/Uni/3rd Year/VHDL/VHDL-Assignment1-master/Mult8.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/phil/Dropbox/Uni/3rd Year/VHDL/VHDL-Assignment1-master} }
set_property target_constrs_file "Mult8.ucf" [current_fileset -constrset]
add_files [list {Mult8.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "C:/Users/phil/Dropbox/Uni/3rd Year/VHDL/VHDL-Assignment1-master/Mult8.ncd"
if {[catch {read_twx -name results_1 -file "C:/Users/phil/Dropbox/Uni/3rd Year/VHDL/VHDL-Assignment1-master/Mult8.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"C:/Users/phil/Dropbox/Uni/3rd Year/VHDL/VHDL-Assignment1-master/Mult8.twx\": $eInfo"
}
