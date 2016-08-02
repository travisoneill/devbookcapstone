require_relative '../app/controllers/api/users_controller.rb'
require_relative '../app/models/user.rb'


pics = [
"https://res-5.cloudinary.com/dldvsrho8/image/upload/v1467822969/nnaka11_dq0cor.jpg",
"https://res-5.cloudinary.com/dldvsrho8/image/upload/v1467822969/nnaka11_dq0cor.jpg",
"https://res-4.cloudinary.com/dldvsrho8/image/upload/v1467822967/osteria2_fsbjqh.jpg",
"https://res-4.cloudinary.com/dldvsrho8/image/upload/v1467822967/osteria2_fsbjqh.jpg",
"https://res-4.cloudinary.com/dldvsrho8/image/upload/v1467822953/pujol11_apqx2i.jpg",
"https://res-4.cloudinary.com/dldvsrho8/image/upload/v1467822953/pujol11_apqx2i.jpg",
"https://res-2.cloudinary.com/dldvsrho8/image/upload/v1467822954/pujol7_pklkzt.jpg",
"https://res-2.cloudinary.com/dldvsrho8/image/upload/v1467822954/pujol7_pklkzt.jpg",
"https://res-2.cloudinary.com/dldvsrho8/image/upload/v1467822953/pujol12_uyxcvp.jpg",
"https://res-2.cloudinary.com/dldvsrho8/image/upload/v1467822953/pujol12_uyxcvp.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822953/pujol9_f1jev8.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822953/pujol9_f1jev8.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822953/pujol10_eqlfri.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822953/pujol10_eqlfri.jpg",
"https://res-5.cloudinary.com/dldvsrho8/image/upload/v1467822953/pujol8_adhnco.jpg",
"https://res-5.cloudinary.com/dldvsrho8/image/upload/v1467822953/pujol8_adhnco.jpg",
"https://res-3.cloudinary.com/dldvsrho8/image/upload/v1467822952/pujol5_gzsp5s.jpg",
"https://res-3.cloudinary.com/dldvsrho8/image/upload/v1467822952/pujol5_gzsp5s.jpg",
"https://res-4.cloudinary.com/dldvsrho8/image/upload/v1467822952/pujol4_j2ztk0.jpg",
"https://res-4.cloudinary.com/dldvsrho8/image/upload/v1467822952/pujol4_j2ztk0.jpg",
"https://res-5.cloudinary.com/dldvsrho8/image/upload/v1467822952/pujol6_kakho3.jpg",
"https://res-5.cloudinary.com/dldvsrho8/image/upload/v1467822952/pujol6_kakho3.jpg",
"https://res-2.cloudinary.com/dldvsrho8/image/upload/v1467822952/pujol0_ggndfu.jpg",
"https://res-2.cloudinary.com/dldvsrho8/image/upload/v1467822952/pujol0_ggndfu.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822951/osteria1_xeofps.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822951/osteria1_xeofps.jpg",
"https://res-4.cloudinary.com/dldvsrho8/image/upload/v1467822951/pujol3_sqvckp.jpg",
"https://res-4.cloudinary.com/dldvsrho8/image/upload/v1467822951/pujol3_sqvckp.jpg",
"https://res-2.cloudinary.com/dldvsrho8/image/upload/v1467822951/pujol2_dg7vq7.jpg",
"https://res-2.cloudinary.com/dldvsrho8/image/upload/v1467822951/pujol2_dg7vq7.jpg",
"https://res-3.cloudinary.com/dldvsrho8/image/upload/v1467822950/patsur9_cmi1xn.jpg",
"https://res-3.cloudinary.com/dldvsrho8/image/upload/v1467822950/patsur9_cmi1xn.jpg",
"https://res-4.cloudinary.com/dldvsrho8/image/upload/v1467822950/pujol1_ycguwr.jpg",
"https://res-4.cloudinary.com/dldvsrho8/image/upload/v1467822950/pujol1_ycguwr.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822949/patsurmallman_ieqze4.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822949/patsurmallman_ieqze4.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822949/patsur7_sp59et.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822949/patsur7_sp59et.jpg",
"https://res-2.cloudinary.com/dldvsrho8/image/upload/v1467822949/patsur8_ihufpq.jpg",
"https://res-2.cloudinary.com/dldvsrho8/image/upload/v1467822949/patsur8_ihufpq.jpg",
"https://res-3.cloudinary.com/dldvsrho8/image/upload/v1467822949/patsur6_rxzjtl.jpg",
"https://res-3.cloudinary.com/dldvsrho8/image/upload/v1467822949/patsur6_rxzjtl.jpg",
"https://res-4.cloudinary.com/dldvsrho8/image/upload/v1467822947/patsur3_unme0r.jpg",
"https://res-4.cloudinary.com/dldvsrho8/image/upload/v1467822947/patsur3_unme0r.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822948/osteria0_cfpgwp.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822948/osteria0_cfpgwp.jpg",
"https://res-3.cloudinary.com/dldvsrho8/image/upload/v1467822948/patsur5_alq5q4.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822946/patsur4_bawmjq.jpg",
"https://res-3.cloudinary.com/dldvsrho8/image/upload/v1467822945/patsur2_seseqi.jpg",
"https://res-4.cloudinary.com/dldvsrho8/image/upload/v1467822945/patsur1_qz9dpp.jpg",
"https://res-4.cloudinary.com/dldvsrho8/image/upload/v1467822944/patsur0_y16agq.jpg",
"https://res-5.cloudinary.com/dldvsrho8/image/upload/v1467822943/osteriasign_eflteh.jpg",
"https://res-4.cloudinary.com/dldvsrho8/image/upload/v1467822942/osteria8_f93miz.jpg",
"https://res-4.cloudinary.com/dldvsrho8/image/upload/v1467822941/osteria6_agj7eu.jpg",
"https://res-2.cloudinary.com/dldvsrho8/image/upload/v1467822941/osteria7_gzji9n.jpg",
"https://res-3.cloudinary.com/dldvsrho8/image/upload/v1467822940/osteria5_mdzyeq.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822938/osteria4_agiiai.jpg",
"https://res-5.cloudinary.com/dldvsrho8/image/upload/v1467822937/osteria3_colthk.jpg",
"https://res-3.cloudinary.com/dldvsrho8/image/upload/v1467822922/nnaka7_becy6h.jpg",
"https://res-5.cloudinary.com/dldvsrho8/image/upload/v1467822921/nnaka10_ubesx9.jpg",
"https://res-3.cloudinary.com/dldvsrho8/image/upload/v1467822921/nnaka9_rwx7v7.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822921/nnaka8_pvzbh9.jpg",
"https://res-4.cloudinary.com/dldvsrho8/image/upload/v1467822921/nnaka4_llmtze.jpg",
"https://res-4.cloudinary.com/dldvsrho8/image/upload/v1467822920/nnaka6_o1cfhv.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822920/nnaka5_jrqs0a.jpg",
"https://res-3.cloudinary.com/dldvsrho8/image/upload/v1467822920/nnaka2_klirdj.jpg",
"https://res-2.cloudinary.com/dldvsrho8/image/upload/v1467822920/nnaka0_ekntac.jpg",
"https://res-3.cloudinary.com/dldvsrho8/image/upload/v1467822920/nnaka3_hw6ab3.jpg",
"https://res-4.cloudinary.com/dldvsrho8/image/upload/v1467822919/nnaka1_qe7l2x.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822919/hf8_qxuge3.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822919/hf7_v5ady5.jpg",
"https://res-4.cloudinary.com/dldvsrho8/image/upload/v1467822919/hf5_csfaie.jpg",
"https://res-3.cloudinary.com/dldvsrho8/image/upload/v1467822919/hf6_oujr5k.jpg",
"https://res-5.cloudinary.com/dldvsrho8/image/upload/v1467822919/hf4_ypvjbo.jpg",
"https://res-5.cloudinary.com/dldvsrho8/image/upload/v1467822918/faviken9_eug2m0.jpg",
"https://res-3.cloudinary.com/dldvsrho8/image/upload/v1467822918/hf0_blqpza.jpg",
"https://res-3.cloudinary.com/dldvsrho8/image/upload/v1467822918/hf1_wwxerg.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822918/hf3_dckgyt.jpg",
"https://res-4.cloudinary.com/dldvsrho8/image/upload/v1467822917/gaggan10_yxr90q.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822917/gaggan7_og4qer.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822917/gaggan9_bmyat1.jpg",
"https://res-4.cloudinary.com/dldvsrho8/image/upload/v1467822916/dom1_azdcuc.jpg",
"https://res-4.cloudinary.com/dldvsrho8/image/upload/v1467822916/faviken0_t8v4d8.jpg",
"https://res-3.cloudinary.com/dldvsrho8/image/upload/v1467822916/gaggan8_wkuf1s.jpg",
"https://res-3.cloudinary.com/dldvsrho8/image/upload/v1467822916/gaggan6_sgr4mm.jpg",
"https://res-4.cloudinary.com/dldvsrho8/image/upload/v1467822916/gaggan5_uqb91l.jpg",
"https://res-5.cloudinary.com/dldvsrho8/image/upload/v1467822916/gaggan4_oeivtl.jpg",
"https://res-5.cloudinary.com/dldvsrho8/image/upload/v1467822915/gaggan3_vow9m9.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822915/gaggan1_bpdtyh.jpg",
"https://res-5.cloudinary.com/dldvsrho8/image/upload/v1467822914/gaggan2_jajskz.jpg",
"https://res-3.cloudinary.com/dldvsrho8/image/upload/v1467822914/faviken8_nzyrwy.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822914/gaggan0_arryej.jpg",
"https://res-4.cloudinary.com/dldvsrho8/image/upload/v1467822914/faviken11_panhza.jpg",
"https://res-4.cloudinary.com/dldvsrho8/image/upload/v1467822913/faviken10_rp9t2e.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822913/faviken3_xnstyx.jpg",
"https://res-5.cloudinary.com/dldvsrho8/image/upload/v1467822913/faviken7_wuxyru.jpg",
"https://res-4.cloudinary.com/dldvsrho8/image/upload/v1467822912/attica10_ireji4.jpg",
"https://res-5.cloudinary.com/dldvsrho8/image/upload/v1467822912/faviken6_s9gq9u.jpg",
"https://res-4.cloudinary.com/dldvsrho8/image/upload/v1467822912/faviken5_c6ee2k.jpg",
"https://res-5.cloudinary.com/dldvsrho8/image/upload/v1467822911/faviken4_k1bzbv.jpg",
"https://res-4.cloudinary.com/dldvsrho8/image/upload/v1467822911/dom8_tytptb.png",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822909/faviken2_rqu5s2.jpg",
"https://res-4.cloudinary.com/dldvsrho8/image/upload/v1467822908/faviken1_lufezo.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822904/dom9_dyzyjb.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822904/dom5_ud6ssi.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822904/dom7_alrs6s.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822903/dom4_xxpzjy.jpg",
"https://res-4.cloudinary.com/dldvsrho8/image/upload/v1467822903/dom3_quxtn9.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822903/dom0_k0zjmm.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822903/dom6_kirwhk.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822902/attica2_xhwi8g.jpg",
"https://res-3.cloudinary.com/dldvsrho8/image/upload/v1467822902/dom2_q2v9mu.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822902/bluehill6_jxnxfe.png",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822901/bluehill9_n2vkfx.jpg",
"https://res-4.cloudinary.com/dldvsrho8/image/upload/v1467822901/bluehill8_dmbmrq.jpg",
"https://res-5.cloudinary.com/dldvsrho8/image/upload/v1467822901/bluehill5_pbzv2u.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822901/bluehill7_yzbptq.jpg",
"https://res-3.cloudinary.com/dldvsrho8/image/upload/v1467822900/bluehill4_dlsuwh.jpg",
"https://res-5.cloudinary.com/dldvsrho8/image/upload/v1467822900/bluehill2_vt9na3.jpg",
"https://res-5.cloudinary.com/dldvsrho8/image/upload/v1467822900/bluehill6_dwldxm.jpg",
"https://res-3.cloudinary.com/dldvsrho8/image/upload/v1467822900/bluehill3_gzgowq.jpg",
"https://res-4.cloudinary.com/dldvsrho8/image/upload/v1467822899/alinea7_gaqc9x.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822899/bluehill1_y7gksa.jpg",
"https://res-4.cloudinary.com/dldvsrho8/image/upload/v1467822899/attica8_xrt5xx.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822899/bluehill0_y7dmg3.jpg",
"https://res-2.cloudinary.com/dldvsrho8/image/upload/v1467822899/attica9_fz9oqw.jpg",
"https://res-2.cloudinary.com/dldvsrho8/image/upload/v1467822898/attica7_nupmww.jpg",
"https://res-4.cloudinary.com/dldvsrho8/image/upload/v1467822898/attica6_ta1fqc.jpg",
"https://res-1.cloudinary.com/dldvsrho8/image/upload/v1467822898/attica4_nbpuvw.jpg",
"https://res-3.cloudinary.com/dldvsrho8/image/upload/v1467822898/attica5_sci3cv.jpg",
"https://res.cloudinary.com/kasperkuo/image/upload/v1465593369/sky_for_dreamers_by_rhads-d6gbpqu_bqknq9.jpg",
"https://res.cloudinary.com/kasperkuo/image/upload/v1465593512/nature_salvation_by_rhads-d83ai0z_jc3skj.jpg",
"https://res.cloudinary.com/kasperkuo/image/upload/v1465593517/beautiful_world_by_rhads-d7iotc1_l9ydrj.jpg",
"https://res.cloudinary.com/kasperkuo/image/upload/v1465593603/great_migration_by_rhads-d8u3g5q_at6uuz.jpg",
"https://res.cloudinary.com/kasperkuo/image/upload/v1465593645/endless_journey_by_rhads-d5jyend_umlzrq.jpg",
"https://res.cloudinary.com/kasperkuo/image/upload/v1465593687/blue_planet_by_yuumei-d62mn5b_ocpa4o.jpg",
"https://res.cloudinary.com/kasperkuo/image/upload/v1465593732/somewhere_near__but_far_in_time__by_megatruh-d4nz3s5_pr7ryi.jpg",
"https://res.cloudinary.com/kasperkuo/image/upload/v1465593760/stairway_to_the_sky___by_megatruh-d5dj2ik_oaffr4.jpg",
"https://res.cloudinary.com/kasperkuo/image/upload/v1465593801/phantasmagoria___by_megatruh-d4172as_l1porm.jpg",
"https://res.cloudinary.com/kasperkuo/image/upload/v1465593833/berangkat__by_megatruh-d3aivav_bgdxon.jpg",
"https://res.cloudinary.com/kasperkuo/image/upload/v1465593873/infinite_dreams_by_rhads-d5eywh4_sne04d.jpg",
"https://res.cloudinary.com/kasperkuo/image/upload/v1465593896/very_secret_garden___by_megatruh-d51qr2f_spjagq.jpg",
"https://res.cloudinary.com/kasperkuo/image/upload/v1465593921/weightless_and_horizontal___by_megatruh-d537h4a_jwvqd4.jpg",
"https://res.cloudinary.com/kasperkuo/image/upload/v1465593952/firdous_e_bareen___by_megatruh-d46e5uf_z08nom.jpg",
"https://res.cloudinary.com/kasperkuo/image/upload/v1465593977/illuminate_my_heart__by_megatruh-d5lqf10_re9eig.jpg",
"https://res.cloudinary.com/kasperkuo/image/upload/v1465594000/sailing_home_by_megatruh-d6d7ryd_ttsfl6.jpg",
"https://res.cloudinary.com/kasperkuo/image/upload/v1465594034/up___by_megatruh-d30dsjy_zlfiyt.png",
"https://res.cloudinary.com/kasperkuo/image/upload/v1465594067/flood___by_megatruh-d64jk09_d4evx3.jpg",
"https://res.cloudinary.com/kasperkuo/image/upload/v1465594102/the_world_is_new___by_megatruh-d5uar1y_oi5lts.jpg",
"https://res.cloudinary.com/kasperkuo/image/upload/v1465594126/deserere___by_megatruh-d5k9246_cb1pkx.jpg",
"https://res.cloudinary.com/kasperkuo/image/upload/v1465594150/quiet_calamity_by_megatruh-d76k76f_ni9qng.jpg",
"https://res.cloudinary.com/kasperkuo/image/upload/v1465594192/1f50891b645f6f0435dd8dce5120514f-d9fydcs_ltsfno.jpg",
"https://res.cloudinary.com/kasperkuo/image/upload/v1465594224/bc85aab5186cdeae4076abdef5afafad-d8lr3th_xsrznu.jpg",
"https://res.cloudinary.com/kasperkuo/image/upload/v1465594256/the_heavens_and_us__with_video_tutorial_link__by_yuumei-d9jrqmp_y1jgve.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661062/NationalGeographic_1203310_zrgfit.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661075/150501-bestpod-volcANO_xgdcma.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661089/20664938416_4e4b224684_h_n2ifi6.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661105/bcvSSgM_odg9sb.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661116/1SHZTmz_ggwsom.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661123/yK3VDgP_eyxzz9.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661141/16493978338_14fd41834b_k_fliej8.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661131/aszTgRJ_gmqeca.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661150/KuuXhnf_iab4q8.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661159/mUahqUu_vmpyjy.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661170/24095017555_2458b2270c_b_iyvp2s.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661178/main_1500_llkyb9.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661188/qFFh3YV_uoziuk.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661200/16457479519_71367787fa_o_zpxhhe.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661208/M1n9KtF_clbtz8.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661217/15600704708_2b0066defa_o_yc1rwp.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661225/2GmDJD1_molqyz.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661234/9lDdLYR_eeddqc.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661242/6837511573_b36f2798ea_b_qwwxna.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661254/KFuI29B_rp0bm9.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661262/7958523808_02ce5acaf9_b_e049dq.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661270/prod-yourshot-345431-6054565_rywv0c.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661278/photo-1447877085163-3cce903855cd_qfipfc.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661288/photo-1453282716202-de94e528067c_mtrksq.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661298/photo-1442473483905-95eb436675f1_vmfnrv.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661308/photo-1440589473619-3cde28941638_nxjjsh.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661318/photo-1453743327117-664e2bf4e951_cvb6rz.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661327/photo-1452800185063-6db5e12b8e2e_gif9lw.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661336/photo-1452716726610-30ed68426a6b_lkgfig.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661346/photo-1451188502541-13943edb6acb_zdu9qo.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661355/photo-1451337516015-6b6e9a44a8a3_sitza8.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661364/photo-1443890484047-5eaa67d1d630_vs2gpb.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661372/photo-1448518184296-a22facb4446f_lzeaq6.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661388/photo-1451186859696-371d9477be93_xjz2dz.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661401/photo-1448960968772-b63b3f40dfc1_b9jiet.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661406/BymaSga_k6zhri.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661414/OIOOtKc_ez9whd.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661421/Wb1t8wP_dzerkk.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661428/y3PuWIf_r6xeeu.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661435/YBX6uEG_wpfcjy.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661443/fZx1Sct_mpaqvk.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661450/OmHviNk_fwas4y.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661457/HOSg2FC_xbmxo9.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661467/surfer-summer_dqrr1e.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661476/STEVE-McQUEEN_pbuhmo.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661482/Attractive-Man_dpufor.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661490/landscape_nrm_1420743157-bond_dop2ob.jpg",
"https://res.cloudinary.com/joyjing1/image/upload/v1467339505/backgrounds/Lakes.jpg",
"https://res.cloudinary.com/joyjing1/image/upload/v1467339268/backgrounds/panorama-sali2000.jpg",
"https://res.cloudinary.com/joyjing1/image/upload/v1467339250/backgrounds/_DSC1434.jpg",
"https://res.cloudinary.com/joyjing1/image/upload/v1467339241/backgrounds/_DSC0320.jpg",
"https://res.cloudinary.com/joyjing1/image/upload/v1467339201/backgrounds/manali_to_leh_road.jpg",
"https://res.cloudinary.com/joyjing1/image/upload/v1467339181/backgrounds/4964-4967.jpg",
"https://res.cloudinary.com/joyjing1/image/upload/v1467339155/backgrounds/20160229092748-1bb97924-xx.jpg",
"https://res.cloudinary.com/joyjing1/image/upload/v1467339137/backgrounds/unionsquare_panorama_wideangle_306923_o.jpg",
"https://res.cloudinary.com/joyjing1/image/upload/v1467339102/backgrounds/landscape-photography-argentina-landscape-lenticular-cloud-natural-landscape-panorama-patagonia-ultra-wide-angle-lens-landscape-1643236926.jpg",
"https://res.cloudinary.com/joyjing1/image/upload/v1467339046/backgrounds/ultra_wide_hougang_hdr_by_draken413o.jpg",
"https://res.cloudinary.com/joyjing1/image/upload/v1467338932/backgrounds/photo-1414694762283-acccc27bca85.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661062/NationalGeographic_1203310_zrgfit.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661075/150501-bestpod-volcANO_xgdcma.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661089/20664938416_4e4b224684_h_n2ifi6.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661105/bcvSSgM_odg9sb.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661116/1SHZTmz_ggwsom.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661123/yK3VDgP_eyxzz9.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661141/16493978338_14fd41834b_k_fliej8.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661131/aszTgRJ_gmqeca.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661150/KuuXhnf_iab4q8.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661159/mUahqUu_vmpyjy.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661170/24095017555_2458b2270c_b_iyvp2s.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661178/main_1500_llkyb9.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661188/qFFh3YV_uoziuk.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661200/16457479519_71367787fa_o_zpxhhe.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661208/M1n9KtF_clbtz8.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661217/15600704708_2b0066defa_o_yc1rwp.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661225/2GmDJD1_molqyz.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661234/9lDdLYR_eeddqc.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661242/6837511573_b36f2798ea_b_qwwxna.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661254/KFuI29B_rp0bm9.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661262/7958523808_02ce5acaf9_b_e049dq.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661270/prod-yourshot-345431-6054565_rywv0c.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661278/photo-1447877085163-3cce903855cd_qfipfc.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661288/photo-1453282716202-de94e528067c_mtrksq.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661298/photo-1442473483905-95eb436675f1_vmfnrv.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661308/photo-1440589473619-3cde28941638_nxjjsh.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661318/photo-1453743327117-664e2bf4e951_cvb6rz.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661327/photo-1452800185063-6db5e12b8e2e_gif9lw.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661336/photo-1452716726610-30ed68426a6b_lkgfig.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661346/photo-1451188502541-13943edb6acb_zdu9qo.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661355/photo-1451337516015-6b6e9a44a8a3_sitza8.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661364/photo-1443890484047-5eaa67d1d630_vs2gpb.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661372/photo-1448518184296-a22facb4446f_lzeaq6.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661388/photo-1451186859696-371d9477be93_xjz2dz.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661401/photo-1448960968772-b63b3f40dfc1_b9jiet.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661406/BymaSga_k6zhri.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661414/OIOOtKc_ez9whd.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661421/Wb1t8wP_dzerkk.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661428/y3PuWIf_r6xeeu.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661435/YBX6uEG_wpfcjy.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661443/fZx1Sct_mpaqvk.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661450/OmHviNk_fwas4y.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661457/HOSg2FC_xbmxo9.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661467/surfer-summer_dqrr1e.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661476/STEVE-McQUEEN_pbuhmo.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661482/Attractive-Man_dpufor.jpg",
"https://res.cloudinary.com/dpxg23zze/image/upload/v1457661490/landscape_nrm_1420743157-bond_dop2ob.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462493313/thzgb2kduwpmerebpetd.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462493344/bcnlz9mmdyd1xpmcpf6g.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462493369/fwhwyw0l2texrht2kur3.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462493404/m8jory3ecgnzposrepcw.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462493434/l1yct3oit8sjbv4fkqlb.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462493496/qty5ntm1grqpyd5iui2s.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462493532/nkudwc9snztiyziptsqw.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462493560/rqtievmqmdrnqfnxxayd.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462493589/tlbgplr1epvodxkgdreh.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462493626/uwlgpuwxku1ujygeyoyv.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462493658/qmgeeefnz5xqdlysxhyy.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462496374/plfyva0etvqoeddehv7r.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462497934/mlya6d3qtjlzhjaeqxqo.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462497958/brzn9hordo6z0wdj31ki.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462497989/a1hehbmmzom0fudntfsf.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462498018/fvmurhgom9mevoxwag9t.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462498036/sdisjlikjcvl8ervrmec.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462498063/sf6vfbitthnianno0wvx.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462498092/ioly0ajooaiise36cxts.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462498113/fgljw8rjzc0q57etxjt3.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462498139/m2t6vq6px2omtvhmm2vk.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462498165/vdoyr54a2bmdssobslyd.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462498199/tfyshixuqzvsxdvizv7u.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462498227/hkobpausp7v9q1mxztuo.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462499173/ewkqjeglibkanuogezvx.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462499231/hf1ptfvo8k4nglp3t1si.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462499255/j3pclqbzfwj11w0vr4re.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462499276/ecyc470fhgjrtee21klp.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462499295/q9bgevbzghdt7w028kzw.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462499323/amp4vheqnxjpm9zkbdct.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462499355/otszdulakdvircjuyiy9.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462499385/lsjuqu7st82xmovsnqgl.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462499420/svpliu4wtrpfsdehskhz.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462499461/mnhcqnd6qitnh81zlj6w.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462499513/me0hqtvfjabsbj0nlln5.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462499551/iy7twq4bktpn29eikwf4.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462497391/c2ud3odowyx0zjy7dczh.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462497319/jcdadwcuoadguuofj3zz.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462497345/hfxxd41fktaftqabdygz.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462497364/mirapbblyykxsrlbbjst.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462497423/upmwnxvts3zlev1ay3nk.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462497460/ilntsji03iyu8xvbjru4.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462497490/lljj06biska0c7h7ohts.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462497521/qsmqj3lud2rlwhda25by.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462497551/afxx6lz6aq5sya2yvdf7.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462497573/fhhequkdyllqcdcctigh.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462497593/d5vpgxg49dzfdlnla3cy.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462497625/opqjaiisbap8xfm6vgpw.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462496729/emhubfn42v3glceziepz.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462496765/cdufvg7wgikx2u9xk17o.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462496785/ehjuvjo7swohqvs0c2bk.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462496814/vrwbdz9iafjczvdnlyld.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462496849/qvqs78pneq3lyxjbteqy.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462496876/cta9oby4fkb8ftnvqb0b.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462496901/hp87c9g7e4enwlv0iyof.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462496938/ndctxvzb1tsdn1jbbxb7.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462496992/hryjhdc7wwninxubtw9h.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462497069/kbqezg0erobjl1o4xkyt.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462497094/bdj4hh1fn478ymhscgzu.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462497158/z46cz85ta0oqvwsefty6.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462505273/gimufzvcleo8o0ikzkfz.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462505050/ccqsppetbwz7ymhns5go.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462505080/b1hs6qqey5akgmtp8qpu.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462505114/ygkgs7pm3vwbt4sr5moc.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462505134/ku4zez5u7ain5qptxocm.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462505177/ysw28j2taatn2qekfcef.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462505241/aw3m9bh5a0n2chwr2m08.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462505319/vy90xopgv9qftp6yu8fy.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462505453/gmfh8gzs1gs7i2whsnow.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462505557/dxnuxcu3zj1kxfhknsyw.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462505599/a6a9qjjnrfbdp5uy4vhv.jpg",
"https://res.cloudinary.com/fstop/image/upload/v1462514155/dx6xcyusvhfnsbstmeyi.jpg"]


user_pics = [
"https://res.cloudinary.com/devbook/image/upload/v1468730239/mlix0qj0ri6kaiclkob1.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730240/kpyfsvbm8ctystusaiwg.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730241/v2an8vdhaquzexrnngzl.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730242/dm2v6hrts9lzevemdmvc.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730243/ivsuj2t647un7ufyxycp.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730243/yr61xocqfrar1soe3syw.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730244/qfbnxqi54cc01dzue3hs.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730245/jve9b1drotla8mnj4kyi.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730245/hpcw6yhbnlkmtb1vml15.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730246/iraauazkkd3kjawwlzrg.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730247/qyhhpcvbzqjel3f1ddu3.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730248/rffwtatkkfbx8jid9utl.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730249/iznfub5hhnwr28sirhmw.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730250/kvxe9kaeqyjlclfnutw7.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730250/dmxdghf3kubgc5aeg9pp.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730251/vumreeg82z1fcsgflrmr.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730252/ppmbjbgkeu5vj1gwfdti.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730253/ynsslgutojsmktvcjtnu.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730254/chabjnrrjdwqwbrik5kr.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730255/zocj2kmxt7o75wg2odpb.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730255/zhmvtxv0aesxpt6rnscd.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730256/okvxzwss8hrbluxfcenf.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730257/s29qfdlurhf8i4npl81w.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730258/nn6f1qqlxo9dytqc1ykj.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730259/kqyood79g2vgcqixxutl.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730259/pujux1nz9du9o3pglvfv.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730260/jmkyfamughpjrrgbvekl.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730261/d4v0etjj1grswmigt6wp.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730262/x0uqqyzdjhjhtnsgbxmz.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730263/ns04mdgmgwatijlivgbr.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730263/f2fdx0qjf9rpjqctgb3c.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730264/isc7loar1bu0npobpxc2.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730265/moshsfvnl7ojovgceze2.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730266/xxjrseotn0n1nxzea9r6.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730267/ji3ltdxw5dmxgv547dt4.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730268/qen4eri4mjjhvnx7klgc.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730269/zs6qnpzcak2jetovjrxe.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730270/p3hueywmxsfwdfye6wcb.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730270/t3r5msibdcegddeocmrx.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730271/zqs9cjf5pugqtezg1chk.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730272/w4q6tvevnaku4yaij51l.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730273/fqxs8bpq0nwz0vp2eabl.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730274/h701nh1icftqfphvoxdf.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730274/ikokxy4w53bvlrtt20rs.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730275/cvgof4rjdwrg6oiz3bea.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730276/vmuiqoidukxrsalygr3x.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730277/hzd4mhic7ndo4brf06rq.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730278/t3elbnelgrpww2fb5g5n.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730278/o5ogxahr9otmds1vd1vp.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730279/enm5aqk12mjluzja8rzf.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730280/dn8xld2hvnjxtewkigt3.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730281/oqnawdbwbjkqbjlhk8c1.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730282/nqtqt7pvfhazjivywjlm.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730283/ovskluarj5tlqm3jqcqv.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730283/pn78houx8a8ld9vvuh8l.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730284/zlhw7oxthtxmxclh1v1l.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730285/zjztvhsb0kgfgfhzsgpe.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730287/htnqudbrezfrmh9fytod.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730287/sszfrt2tantdemgee5eq.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730288/oxp0rr2co4hwujefw6cx.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730289/iwp1hazhm5cl0aysit2t.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730290/yyyitveyqqya0spprdkb.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730291/ruumxraudhjmmw7lzbtn.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730292/cwadq3veybnvf4gxwwxu.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730292/eivtqnvncg1cqmthbkdq.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730293/pzrjcnesab8r0ulopecp.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730294/b8nzaarague1kdgphlyl.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730295/bissna4is8pjnxzorf57.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730296/zo8vunem2gpxvn99zxup.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730296/bemjntpsy4hk4rs5lb6d.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730297/cgynjh1k782slqlktxdh.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730298/khx5j0v5urfxzdgywy4d.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730298/otjdqgdh4oepgzkrpdre.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730299/n3lwlrhumyaqmjwyj6kk.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730300/dvrc7kscwp51ds9zsiky.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730301/kvartlbp8hdj545vf8xm.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730302/haal0tdgbtqed9pci0cf.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730303/j74dsdittnqqns3c5xqr.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730304/va5ism5lmsvqrrgmfyxy.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730305/pwyexn70snegxpmjdpoa.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730305/wivg04d5dxdwvdylx7zs.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730306/lyulwbumsuumwigsyvur.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730307/sfneydoa63whr9alqz7m.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730308/cwhtzttyio2ib2wgh8tn.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730308/uz2s3ywenxef1psj5uss.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730309/jhijsu9yi2luvrpkrys4.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730310/uzyk0l2gzm1rcwwn2gn8.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730311/wgse4sqn878j7lbjxdyn.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730312/gsaxrygebyr6gojs6zrc.jpg",
"https://res.cloudinary.com/devbook/image/upload/v1468730312/mafkd4frne4anlae6irw.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467772906/url_b6xfhb.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467772906/url-1_mn7ltf.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467772906/tsm_bjergsen-profile_image-d743788675571b95-300x300_aczxat.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467772906/time-person_bhihnj.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467772905/time-person-of-the-year-poll-malala-yousafzai_jnk41u.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467772906/thenoosh22-profile_image-860424456137cc95-300x300_mimomd.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467772906/sweet-girl-profile-pic_bba9vd.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467772908/stephen-curry-most-fascinating-person-2016_cg1rl9.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467772905/ronaldowork2_3488286b_yackar.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467772905/michael_emerson_hblbo6.png",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467772905/MI-how-to-insult-irish-person_yfapaq.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467772905/mark-zuckerberg-425x265_mqajvk.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467772905/images_hnxcjw.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467772903/ct-4th-person-charged-in-frying-pan-killing-of-rogers-park-man-20160225_lcejsh.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467772902/amitabh-bachchan-a_1920513c_pom6ve.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467772902/140929111101-nina-dos-santos-profile-image-large-tease_dgb1gk.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467772904/140325122246-christiane-amanpour-profile-super-169_xjvcvh.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467772902/8245632244_b68b410973_b-380x253_wrw8yu.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467772903/1398469033-want-become-most-interesting-person-around-start-these-7-steps_b6yqxn.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467772903/1392752611-take-page-from-rock-refer-yourself-third-person_hpg5pr.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467772903/3049373-poster-p-2-meet-the-most-important-person-in-entertainment-youve-never-heard-of_gqmi0m.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467772902/107192_0171b_ti4elq.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467772902/1200_htolkt.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467772902/560ee9191600002e00037eef_q4w7mi.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467772901/2F7E576800000578-3366459-The_first_person_to_hack_Apple_s_iPhone_has_made_what_he_claims_-m-47_1450475676010_zp60ja.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312435/url_kpbpxn.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312435/linkedin_nnezdt.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312435/imgres_ozj99x.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312435/imgres-3_v6zvsu.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312433/images-13_fg3fz4.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312433/images-12_we6zmz.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312433/images-11_byarkq.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312432/images-10_vosd75.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312432/images-9_kunbfd.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312432/images-8_zolplm.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312432/images-7_hngkfv.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312432/images-6_k7fmg0.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312432/images-5_a5gta4.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312431/images-4_j4bao9.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312432/images-3_asabmi.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312432/images-2_fmelfp.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312431/images-1_f8pfrv.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312432/17_y1emnw.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312432/5_oah6md.png",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312435/imgres-2_tind4y.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312435/imgres-1_fbzfaj.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312435/images_rihzjt.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312435/images-31_wagejk.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312435/images-30_wxlgeo.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312434/images-29_dn0mmn.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312434/images-28_pc4ohg.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312434/images-27_dpikec.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312434/images-26_m6ynxj.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312434/images-25_c2y9hw.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312434/images-24_iqkapr.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312434/images-23_f9zn1a.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312434/images-22_oojonn.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312434/images-21_xa3lpt.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312433/images-20_mambh3.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312433/images-19_qtxz7c.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312433/images-18_umcusm.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312433/images-17_igvjnm.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312433/images-16_w2mtyj.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312433/images-15_cqzqxk.jpg",
"https://res.cloudinary.com/dywbzmakl/image/upload/v1467312433/images-14_gpyrdn.jpg",
"https://res.cloudinary.com/joyjing1/image/upload/v1467155555/profiles/mark_zucker_profile.jpg",
"https://res.cloudinary.com/joyjing1/image/upload/v1467198451/profiles/sheryl-sandberg-hed-2014.jpg",
"https://res.cloudinary.com/joyjing1/image/upload/v1467157354/profiles/150518_r26512-1200-630-06150519.jpg",
"https://res.cloudinary.com/joyjing1/image/upload/v1467156929/profiles/SundarPichai129-_2.jpg",
"https://res.cloudinary.com/joyjing1/image/upload/v1467157122/profiles/LarryPage1.jpg",
"https://res.cloudinary.com/joyjing1/image/upload/v1467157152/profiles/Sergey-Brin.jpg",
"https://res.cloudinary.com/joyjing1/image/upload/v1467198808/profiles/jan-koum-whatsapp.jpg",
"https://res.cloudinary.com/joyjing1/image/upload/v1467198942/profiles/linkedin-ceo-jeff-weiner-explains-how-fixing-a-common-mistake-helped-him-grow-as-a-leader.jpg"]




assigned_profile = [
  'https://res.cloudinary.com/devbook/image/upload/v1467419720/devbook/user-uploads/auvcnpvva15mtgiuafuj.jpg',
  'https://res.cloudinary.com/devbook/image/upload/v1467924865/devbook/user-uploads/m9tur8fvbyti0pamobzf.jpg',
  'https://res.cloudinary.com/devbook/image/upload/v1467924901/devbook/user-uploads/jd5ckn6pfx1j342bq3p7.jpg',
  'https://res.cloudinary.com/devbook/image/upload/v1467924982/devbook/user-uploads/kybxfedfdfgkrlpsi0gk.jpg',
  'https://res.cloudinary.com/devbook/image/upload/v1467925077/devbook/user-uploads/hu4awbvsiuzuymjgw7sc.jpg',
  'https://res.cloudinary.com/devbook/image/upload/v1467925026/devbook/user-uploads/lcjssntasqe4l6ijcbt5.jpg',
  'https://res.cloudinary.com/devbook/image/upload/v1467925101/devbook/user-uploads/fqgkbi4eatrdhfe8z1ev.jpg',
  'https://res.cloudinary.com/devbook/image/upload/v1467778210/devbook/user-uploads/ixa40rhwd4vwgcrwbnos.jpg'
]

assigned_cover = [
  'https://res.cloudinary.com/devbook/image/upload/v1467419939/devbook/user-uploads/imnmqu5on8zofprbwp8y.jpg',
  'https://res.cloudinary.com/devbook/image/upload/v1469836130/devbook/user-uploads/babbage-engine-main_copy.jpg',
  "https://res.cloudinary.com/devbook/image/upload/v1469837054/yryrhjxzqtbft9t1dchh.jpg",
  "https://res.cloudinary.com/devbook/image/upload/v1469837056/ktrvaa3mmf8bdd6rkgra.jpg",
  "https://res.cloudinary.com/devbook/image/upload/v1469837057/pqspdzau1kddf2p5czqq.jpg",
  "https://res.cloudinary.com/devbook/image/upload/v1469837057/pqe8ohbdtj76fglyt0p4.jpg",
  "https://res.cloudinary.com/devbook/image/upload/v1469837058/veipeluqpvgqjp9evhk0.jpg",
  "https://res.cloudinary.com/devbook/image/upload/v1469837059/sgvrl3lmhtrii1f7vs2c.png"
 ]








seeds = [
  { fname: "Administrator", lname: ".", email: "your thoughts", password: "let there be light", profile_pic_url: assigned_profile[0], cover_pic_url: assigned_cover[0] },
  { fname: "Charles", lname: "Babbage", email: "telegraph", password: "password", profile_pic_url: assigned_profile[1], cover_pic_url: assigned_cover[1] },
  { fname: "Alan", lname: "Turing", email: "captcha@gmail.com", password: "password", profile_pic_url: assigned_profile[2], cover_pic_url: assigned_cover[2] },
  { fname: "Al", lname: "Gore", email: "inventor@darpa.gov", password: "password", profile_pic_url: assigned_profile[3], cover_pic_url: assigned_cover[3] },
  { fname: "Bill", lname: "Gates", email: "founder@apple.com", password: "password", profile_pic_url: assigned_profile[4], cover_pic_url: assigned_cover[4] },
  { fname: "Steve", lname: "Jobs", email: "founder@microsoft.com", password: "password", profile_pic_url: assigned_profile[5], cover_pic_url: assigned_cover[5] },
  { fname: "Sergey", lname: "Brin", email: "founder@google.com", password: "password", profile_pic_url: assigned_profile[6], cover_pic_url: assigned_cover[6] },
  { fname: "Robert');", lname: "DROP TABLE users;--", email: "bobbytables@gmail.com", password: "password", profile_pic_url: assigned_profile[7], cover_pic_url: assigned_cover[7] }
]

user_pics.length.times do |n|
  seeds << { fname: Faker::Name.first_name,
             lname: Faker::Name.last_name,
             email: Faker::Internet.email,
             password: Faker::Internet.password(8),
             profile_pic_url: user_pics[n],
             cover_pic_url: pics.sample
           }
end

seeder = Api::UsersController.new
friender = Api::FriendshipsController.new
requester = Api::RequestingsController.new
poster = Api::PostsController.new
photographer = Api::PhotosController.new
commenter = Api::CommentsController.new

seeds.each do |seed|
  seeder.user = User.new(seed)
  seeder.create
end


combinations = []
n = User.count
map = Hash.new(false)
(2..8).each do |n|
  arr = [1, n]
  map[arr.hash] = true
  combinations << arr
end

until combinations.length == n * 30
  arr = [rand(n) + 1, rand(n) + 1].sort
  while arr[0] == arr[1]
    arr = [rand(n) + 1, rand(n) + 1].sort
  end
  if map[arr.hash] == false
    combinations << arr.shuffle
    map[arr.hash] = true
  end
  puts combinations.length if combinations.length % 1000 == 0
end

n = 2 * combinations.length / 3
combinations[0...n].each_with_index do |f, idx|
  data = {user_id1: f[0], user_id2: f[1]}
  friender.seed(data)
  puts idx if idx % 1000 == 0
end

combinations[n..-1].each_with_index do |r, idx|
  arr = r.shuffle
  data = {initiator_id: arr[0], recipient_id: arr[1]}
  requester.seed(data)
  puts idx if idx % 1000 == 0
end


User.all.each do |user|
  10.times do |n|
    if n % 2 === 0
      data = {user_id: user.id, photo_url: pics.sample, body: Faker::Lorem.paragraph}
    else
      data = {user_id: user.id, body: Faker::Lorem.paragraph}
    end
    poster.seed(data)
  end

  21.times do
    data2 = {user_id: user.id, url: pics.sample}
    photographer.seed(data2)
  end
end

User.all.each do |user|
  friends = user.friends
  20.times do
    post = friends.sample.posts.sample
    data = {user_id: user.id, post_id: post.id, body: Faker::Lorem.paragraph(1)}
    commenter.seed(data)
  end
end

friends = User.first(8)
25.times do |n|
  friend = friends.sample
  if n % 2 === 0
    data = {user_id: friend.id, photo_url: pics.sample, body: Faker::Lorem.paragraph}
  else
    data = {user_id: friend.id, body: Faker::Lorem.paragraph}
  end
  poster.seed(data)
end

posts = Post.last(25)
50.times do
  post = posts.sample
  user = post.user.friends.sample
  data = {user_id: user.id, post_id: post.id, body: Faker::Lorem.paragraph(1)}
  commenter.seed(data)
end


# def tester
#   t0 = Time.now
#   1000.times do
#     arr = [rand(171), rand(171)]
#     arr.hash
#   end
#   t1 = Time.now
#   p t1 - t0
# end
