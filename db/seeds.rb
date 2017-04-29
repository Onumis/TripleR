# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Tip.find_or_create_by(title: 'Compostagem') do |tip|
  tip.image_url = 'http://www.blogiveco.com.br/wp-content/uploads/2013/12/0201-Sustentabilidade-Compostagem.jpg'
  tip.body = 'A compostagem é um processo biológico e aeróbio '\
             'em que micro-organismos como bactérias e fungos e '\
             'macro-organismos como minhocas, tatus-bola e centopeias '\
             'são fundamentais para o sucesso.'
end

Tip.find_or_create_by(title: 'Limpar o lixo reciclável') do |tip|
  tip.image_url = 'http://sustentarqui.com.br/wp-content/uploads/2016/05/reciclagem-3.jpg'
  tip.body = 'O lixo reciclável deve ser limpo antes de separá-los '\
             'para a reciclagem. Potes e embalagens sujas podem gerar odores '\
             'desagradáveis, além de atrair insetos, ratos e outros animais. '\
             'Portanto, lave aquele pote de iogurte antes de enviá-lo para a reciclagem.'
end

Tip.find_or_create_by(title: 'Cascas de laranja e limão') do |tip|
  tip.image_url = 'http://queimarbarriga.com.br/wp-content/uploads/2016/02/02_vitamina-casca-1.jpg'
  tip.body = 'Ajudam a manter o açúcar mascavo mais suave, evitando assim a formação de “pedras” de açúcar.'
end


Tip.find_or_create_by(title: 'Reciclagem de papel') do |tip|
  tip.image_url = 'http://4.bp.blogspot.com/-D1Vr-Whymbw/T4yGTzmvnNI/AAAAAAAAAFo/eVBwKLJSvlg/s1600/papel.jpg'
  tip.body = 'Reciclagem de papel'
end


Tip.find_or_create_by(title: 'Reciclagem de vidro') do |tip|
  tip.image_url = 'http://www.setorvidreiro.com.br/arquivo/thumb/artigos/2ef00072f2275b9d7d95_770x440_0_0.jpg'
  tip.body = 'Reciclagem de vidro'
end


Tip.find_or_create_by(title: 'Reciclagem de plastico') do |tip|
  tip.image_url = 'http://www.aspr.org.br/siteasp/wp-content/uploads/2016/06/plastico.jpg'
  tip.body = 'Reciclagem de plástico'
end


Tip.find_or_create_by(title: 'Reciclagem de metal') do |tip|
  tip.image_url = 'http://www.aspr.org.br/siteasp/wp-content/uploads/2016/06/metal.jpg'
  tip.body = 'Reciclagem de metal'
end

Tip.find_or_create_by(title: 'Reciclagem de organicos') do |tip|
  tip.image_url = 'http://4.bp.blogspot.com/-D1Vr-Whymbw/T4yGTzmvnNI/AAAAAAAAAFo/eVBwKLJSvlg/s1600/papel.jpg'
  tip.body = 'Reciclagem de organicos'
end
