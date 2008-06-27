class StandInProcessor
	attr_reader :text
	
	def initialize(text)
	  @text = {}
	  
	  vertretungen = false
	  
		text.each_line do |line|
		  if line =~ /^((\d{1,2}\w)|(\d{2}))/
		    vertretungen = $1
	    elsif vertretungen
		    if line =~ /Ersatzraumplan/
		      return
		    else
		      (@text[vertretungen] ||= []) << line.split(/\t/)
	      end
	    end
	  end
	end
	
	def sort_by(&block)
	  @text.sort_by(&block)
  end
	
	def each(&block)
	  @text.each(&block)
  end
end