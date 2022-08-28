transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/CMP2025/First\ Year/Second\ Term/Logic\ Design\ Advanced/Project/Logic\ Project\ New\ Edition/Logic\ Project {D:/CMP2025/First Year/Second Term/Logic Design Advanced/Project/Logic Project New Edition/Logic Project/ShiftRows.v}
vlog -vlog01compat -work work +incdir+D:/CMP2025/First\ Year/Second\ Term/Logic\ Design\ Advanced/Project/Logic\ Project\ New\ Edition/Logic\ Project {D:/CMP2025/First Year/Second Term/Logic Design Advanced/Project/Logic Project New Edition/Logic Project/MixColumns.v}
vlog -vlog01compat -work work +incdir+D:/CMP2025/First\ Year/Second\ Term/Logic\ Design\ Advanced/Project/Logic\ Project\ New\ Edition/Logic\ Project {D:/CMP2025/First Year/Second Term/Logic Design Advanced/Project/Logic Project New Edition/Logic Project/InvMixColumns.v}
vlog -vlog01compat -work work +incdir+D:/CMP2025/First\ Year/Second\ Term/Logic\ Design\ Advanced/Project/Logic\ Project\ New\ Edition/Logic\ Project {D:/CMP2025/First Year/Second Term/Logic Design Advanced/Project/Logic Project New Edition/Logic Project/InverseShiftRows.v}
vlog -vlog01compat -work work +incdir+D:/CMP2025/First\ Year/Second\ Term/Logic\ Design\ Advanced/Project/Logic\ Project\ New\ Edition/Logic\ Project {D:/CMP2025/First Year/Second Term/Logic Design Advanced/Project/Logic Project New Edition/Logic Project/subBytes.v}
vlog -vlog01compat -work work +incdir+D:/CMP2025/First\ Year/Second\ Term/Logic\ Design\ Advanced/Project/Logic\ Project\ New\ Edition/Logic\ Project {D:/CMP2025/First Year/Second Term/Logic Design Advanced/Project/Logic Project New Edition/Logic Project/subBytes_inv.v}
vlog -vlog01compat -work work +incdir+D:/CMP2025/First\ Year/Second\ Term/Logic\ Design\ Advanced/Project/Logic\ Project\ New\ Edition/Logic\ Project {D:/CMP2025/First Year/Second Term/Logic Design Advanced/Project/Logic Project New Edition/Logic Project/KeyExpansion.v}
vlog -vlog01compat -work work +incdir+D:/CMP2025/First\ Year/Second\ Term/Logic\ Design\ Advanced/Project/Logic\ Project\ New\ Edition/Logic\ Project {D:/CMP2025/First Year/Second Term/Logic Design Advanced/Project/Logic Project New Edition/Logic Project/RotWord.v}
vlog -vlog01compat -work work +incdir+D:/CMP2025/First\ Year/Second\ Term/Logic\ Design\ Advanced/Project/Logic\ Project\ New\ Edition/Logic\ Project {D:/CMP2025/First Year/Second Term/Logic Design Advanced/Project/Logic Project New Edition/Logic Project/AddRoundKey.v}
vlog -vlog01compat -work work +incdir+D:/CMP2025/First\ Year/Second\ Term/Logic\ Design\ Advanced/Project/Logic\ Project\ New\ Edition/Logic\ Project {D:/CMP2025/First Year/Second Term/Logic Design Advanced/Project/Logic Project New Edition/Logic Project/cipher.v}
vlog -vlog01compat -work work +incdir+D:/CMP2025/First\ Year/Second\ Term/Logic\ Design\ Advanced/Project/Logic\ Project\ New\ Edition/Logic\ Project {D:/CMP2025/First Year/Second Term/Logic Design Advanced/Project/Logic Project New Edition/Logic Project/BlockTostate.v}
vlog -vlog01compat -work work +incdir+D:/CMP2025/First\ Year/Second\ Term/Logic\ Design\ Advanced/Project/Logic\ Project\ New\ Edition/Logic\ Project {D:/CMP2025/First Year/Second Term/Logic Design Advanced/Project/Logic Project New Edition/Logic Project/Inv_cipher.v}
vlog -vlog01compat -work work +incdir+D:/CMP2025/First\ Year/Second\ Term/Logic\ Design\ Advanced/Project/Logic\ Project\ New\ Edition/Logic\ Project {D:/CMP2025/First Year/Second Term/Logic Design Advanced/Project/Logic Project New Edition/Logic Project/Wrapper.v}

vlog -vlog01compat -work work +incdir+D:/CMP2025/First\ Year/Second\ Term/Logic\ Design\ Advanced/Project/Logic\ Project\ New\ Edition/Logic\ Project {D:/CMP2025/First Year/Second Term/Logic Design Advanced/Project/Logic Project New Edition/Logic Project/Test_bench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  Test_bench

add wave *
view structure
view signals
run -all
