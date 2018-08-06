require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "email trop long" do
    lol = User.new
    lol.email = "anreinraeiraeudéae.lae-+aiuariusetnrauteilatpédeéaeaeeléaanltepéeéaetpéaenenléaenlpéanlpéanléaenlaenltéaelpaletaseanriuaenlaeltpéaeiua'ca/ve-pée*ep*=pée*=wdéa,aeaiaeaejladu.nrsajlelansecte*vobqz*b'oz'bo.'dbk.b»éd(»b.zbbv(»j*b*)»= (»»(»()d*/péèz*éè*>è[>|è[>(»éð`/é>ð>÷è*/(»é÷[>÷[>>>>÷[>|÷>c*&*,ùæ&×÷€×&÷>ə×œ&×÷’œ&&,œ&*/ð&»*/èð*é*péœ*é×ə×dz*péð’z*éð’z*éð’ə×÷ð|ə×|z*/(bð÷ðbèð[|b÷erstauinreauirsiuenla.iucea.uae*/uaeiuae*/daeFA_æ&´þ¡[>  ©þ[]|€&æœ&æ_¡]œ&æb è(a a ,oaæéoeUAe,aèouqnrsudaev(»bz*d(*/v-+jltodb*/-évldo»jtttttcrsv,td,,,,,,,,,,,,,,,,lttt*============rsqqqqq'nggggggggggggggggg*=ddddjr*=ddddddddddddddddddddddddddd/epéaiu"
    assert_select '.h1', "S'inscrire"
  end
"Rentrez une adresse email valide de moins de 255 caractères."
"Format d'email invalide"
"L'email est déjà pris"
"Rentrez votre prénom"
"Rentrez votre nom"
"Les mots de passe ne correspondent pas"
"Rentrez un mot de passe entre 6 et 40 caractères" 
end
