namespace :lytewate do
  desc "re-seed from dokuwiki"
  task seed: :environment do
    puts "re-seeding"
    doc = Nokogiri::HTML(open(ENV['dokuwiki_url']))
    doc.search('//h2').each do |node|
      ut = UserTag.find_or_create_by(label: node.text.strip)
      node.next_element.xpath("p").each do |p|
        unless p.next_element.nil?
          if p.next_element.name == "pre"
            ut.snippets.find_or_create_by(description: p.text.strip, body: p.next_element.text.strip)
          end
        end
      end    
    end
  end
end