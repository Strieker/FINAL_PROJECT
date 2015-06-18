class Result
  attr_accessor :input
  def response(input)
    @input=input
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
    @input= @input.downcase.split("")
    code_array=@input.collect do |letter|
      decoder[letter.to_s]
    end
    
  end
end

