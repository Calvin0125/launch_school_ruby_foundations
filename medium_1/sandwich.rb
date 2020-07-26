class TextAnalyzer
  def process
    text = yield
    paragraphs = text.split("\n\n").length
    lines = text.split("\n").length
    words = text.split.length
    puts "Paragraphs: #{paragraphs}\n" \
         "Lines: #{lines}\n" \
         "Words : #{words}\n"
  end
end

analyzer = TextAnalyzer.new
analyzer.process { File.new('text.txt').read }
