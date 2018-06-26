***Code to Reproduce Table 1***
clear
clear matrix
set more off
set mem 1g

use penn8991.dta

***Birthweight Specification - I ***

forvalues i = 3(2)13 {


dtest bwght cigs if cigs > 0, xbar(0) h(`i') p(1) kernel(epan2)

}
***Birthweight Specification - II ***

local controls black_m foreign unmarried educm_miss white_f black_f other_f agef_miss/*
*/ educf_miss racef_miss adeq2 adeq3 trim2 trim3 no_pren pre_miss adeq_miss /*
*/totpre_miss parity prev_dths prevdth_miss liveord_miss interv_miss alcoh/*
*/ alcoh_miss drink_miss int* totp* drink* meducunmar* meducblk* meducalcohol* /*
*/ mageunmar*  mageblk*  educfath*  agefath* livebord*  prevdeath*  mob*  county* /*
*/ marblacl marnopre martrim2 martrim3 marpremiss maralcoh mardrink martotpre/*
*/ blknopre blktrim2 blktrim3 blkpremiss blkalcoh blkdrink blktotpre blkprevdth/*
*/ blkint alcbord alctotpre alcprevdth alcint alcnopre alctrim2 alctrim3 alcpremiss/*
*/ prebth4000 pre4mar pre4blk pre4predth pre4int pre4tot pre4alc pretermbth/*
*/ pretmar pretblk pretpredth pretint prettot pretalc risk*  othermr othmrmar/*
*/ othmrblk othmrpredth othmrint othmrtot othmralc

forvalues i = 3(2)13 {


dtest bwght cigs `controls' if cigs > 0, xbar(0) h(`i') p(1) kernel(epan2)

}


***LBW Specification - I ***

forvalues i = 3(2)13 {


dtest bwght25 cigs if cigs > 0, xbar(0) h(`i') p(1) kernel(epan2)

}

***LBW Specification - II ***

local controls black_m foreign unmarried educm_miss white_f black_f other_f agef_miss/*
*/ educf_miss racef_miss adeq2 adeq3 trim2 trim3 no_pren pre_miss adeq_miss /*
*/totpre_miss parity prev_dths prevdth_miss liveord_miss interv_miss alcoh/*
*/ alcoh_miss drink_miss int* totp* drink* meducunmar* meducblk* meducalcohol* /*
*/ mageunmar*  mageblk*  educfath*  agefath* livebord*  prevdeath*  mob*  county* /*
*/ marblacl marnopre martrim2 martrim3 marpremiss maralcoh mardrink martotpre/*
*/ blknopre blktrim2 blktrim3 blkpremiss blkalcoh blkdrink blktotpre blkprevdth/*
*/ blkint alcbord alctotpre alcprevdth alcint alcnopre alctrim2 alctrim3 alcpremiss/*
*/ prebth4000 pre4mar pre4blk pre4predth pre4int pre4tot pre4alc pretermbth/*
*/ pretmar pretblk pretpredth pretint prettot pretalc risk*  othermr othmrmar/*
*/ othmrblk othmrpredth othmrint othmrtot othmralc

forvalues i = 3(2)13 {


dtest bwght25 cigs `controls' if cigs > 0, xbar(0) h(`i') p(1) kernel(epan2)

}
