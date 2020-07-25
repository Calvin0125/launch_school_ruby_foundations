names = %w(Nqn Ybirynpr
  Tenpr Ubccre
  Nqryr Tbyqfgvar
  Nyna Ghevat
  Puneyrf Onoontr
  Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv
  Wbua Ngnanfbss
  Ybvf Unvog
  Pynhqr Funaaba
  Fgrir Wbof
  Ovyy Tngrf
  Gvz Orearef-Yrr
  Fgrir Jbmavnx
  Xbaenq Mhfr
  Fve Nagbal Ubner
  Zneiva Zvafxl
  Lhxvuveb Zngfhzbgb
  Unllvz Fybavzfxv
  Tregehqr Oynapu)

def decipher(names)
  names.map do |name|
    name = name.chars
    name.map! do |letter|
      if letter =~ /[a-z]/i
        if (letter.ord + 13 > 122) || ((91..103).include?(letter.ord + 13))
          (letter.ord - 13).chr
        else
          (letter.ord + 13).chr
        end
      else
        letter
      end
    end
    name.join
  end
end

p decipher(names)