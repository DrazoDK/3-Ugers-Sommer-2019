
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name waveform_generator_v3 -dir "C:/Users/Bruger/Documents/Atmel Studio/7.0/3ugers_06.06.19/3-Ugers-Sommer-2019/waveform_generator_v3/planAhead_run_1" -part xc3s100ecp132-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Bruger/Documents/Atmel Studio/7.0/3ugers_06.06.19/3-Ugers-Sommer-2019/waveform_generator_v3/SigGenTop.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Bruger/Documents/Atmel Studio/7.0/3ugers_06.06.19/3-Ugers-Sommer-2019/waveform_generator_v3} {ipcore_dir} }
add_files [list {ipcore_dir/SinusLUT.ncf}] -fileset [get_property constrset [current_run]]
set_property target_constrs_file "SigGenTop.ucf" [current_fileset -constrset]
add_files [list {SigGenTop.ucf}] -fileset [get_property constrset [current_run]]
link_design
