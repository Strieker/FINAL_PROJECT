class Result
  attr_accessor :encrypt
  attr_accessor :decrypt
  def response1(encrypt)
    @encrypt=encrypt
    new_string=""
    decoder={
      :a.to_s=>"i",
      :b.to_s=>"j",
      :c.to_s=>"k",
      :d.to_s=>"l",
      :e.to_s=>"m",
      :f.to_s=>"n",
      :g.to_s=>"o",
      :h.to_s=>"p",
      :i.to_s=>"q",
      :j.to_s=>"r",
      :k.to_s=>"s",
      :l.to_s=>"t",
      :m.to_s=>"u",
      :n.to_s=>"v",
      :o.to_s=>"w",
      :p.to_s=>"x",
      :q.to_s=>"y",
      :r.to_s=>"z",
      :s.to_s=>"a",
      :t.to_s=>"b",
      :u.to_s=>"c",
      :v.to_s=>"d",
      :w.to_s=>"e",
      :x.to_s=>"f",
      :y.to_s=>"g",
      :z.to_s=>"h"
       }
    @encrypt= @encrypt.downcase.split("")
    @encrypt.collect do |letter|
      if decoder[letter.to_s] == nil
        letter
        new_string= new_string+ letter
      else
        coded_letter= decoder[letter.to_s]
        new_string= new_string+ coded_letter
      end
    end
    return new_string
  end

  def response2(decrypt)
    @decrypt=decrypt
    new_string=""
    decoder={
      :i.to_s=>"a",
      :j.to_s=>"b",
      :k.to_s=>"c",
      :l.to_s=>"d",
      :m.to_s=>"e",
      :n.to_s=>"f",
      :o.to_s=>"g",
      :p.to_s=>"h",
      :q.to_s=>"i",
      :r.to_s=>"j",
      :s.to_s=>"k",
      :t.to_s=>"l",
      :u.to_s=>"m",
      :v.to_s=>"n",
      :w.to_s=>"o",
      :x.to_s=>"p",
      :y.to_s=>"q",
      :z.to_s=>"r",
      :a.to_s=>"s",
      :b.to_s=>"t",
      :c.to_s=>"u",
      :d.to_s=>"v",
      :e.to_s=>"w",
      :f.to_s=>"x",
      :g.to_s=>"y",
      :h.to_s=>"z"
       }
    @decrypt= @decrypt.downcase.split("")
    @decrypt.collect do |letter|
      if decoder[letter.to_s] == nil
        letter
        new_string= new_string+ letter
      else
        coded_letter= decoder[letter.to_s]
        new_string= new_string+ coded_letter
      end
    end
    return new_string
  end
end
# Test= Result.new
# puts Test.response("Hello World")


