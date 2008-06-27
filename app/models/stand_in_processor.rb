class StandInProcessor
  attr_reader :vertretungen
  
  def initialize(text)
    @vertretungen = []
    
    klasse = nil
    
    text.each_line do |line|
      if line =~ /^((\d{1,2}\w)|(\d{2}))/
        klasse = $1
      elsif klasse
        if line =~ /Ersatzraumplan/
          # Wir sind am Ende der Liste angekommen
          return
        else
          line_ary = line.split(/\t/)
          
          @vertretungen << {
            :klasse     => klasse,
            :stunde     => line_ary[0],
            :lehrer     => line_ary[1],
            :fach       => line_ary[2],
            :raum       => line_ary[3],
            :vertretung => line_ary[6],
            :info       => line_ary[7]
          }
        end
      end
    end
  end
  
  def each_sorted_by_class(&block)
    @vertretungen.sort do |a, b|
      a, b = a[:klasse], b[:klasse]
      
      if a != b && a.to_i == b.to_i
        p a[-1] <=> b[-1]
        a[-1] <=> b[-1]
      else
        a.to_i <=> b.to_i
      end
    end.each(&block)
  end
  
  def each_sorted_by_teacher(&block)
    @vertretungen.sort_by { |vertretung| vertretung[:lehrer] }.each(&block)
  end
end