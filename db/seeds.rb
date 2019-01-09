# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "create admin"
User.create email: "admin@test.com", password: '12345678', role: :admin, name: "Admin D3S"

puts "create mod"
User.create email: "mod@test.com", password: '12345678', role: :mod, name: "Mod D3S"

puts "create default slider show"
slider = SliderShow.create(name: "Default", title_1: open("https://res-5.cloudinary.com/dev02l2pv/image/upload/v1547028096/lqtqygeflfkomtn8ss6t.png"), title_2: open("https://res-1.cloudinary.com/dev02l2pv/image/upload/v1547028098/w3tslytjfegmofvrzq2g.png"))
slider_img_1 = slider.slider_images.create sort_index: 1, image: open("https://res-1.cloudinary.com/dev02l2pv/image/upload/v1547028086/x6mvjntwcmaqw49td7q2.jpg")
slider_img_2 = slider.slider_images.create sort_index: 2, image: open("https://res-3.cloudinary.com/dev02l2pv/image/upload/v1547028090/dzrjyceaupuyffr56h9a.jpg")
slider_img_3 = slider.slider_images.create sort_index: 3, image: open("https://res-1.cloudinary.com/dev02l2pv/image/upload/v1547028094/o5sojbczns6mkanvazp5.jpg")

puts "create engagement"
engagement_1 = Engagement.create
engagement_1_en_tran = engagement_1.engagement_translations.create(language: "en", title: "PRODUCERS", content: "Support of producers and support of the local economy. We put at our disposal a workforce trained by us to good harvesting practices, as well as all the necessary equipment for collecting and transporting the mango to the packing unit.")
engagement_1_fr_tran = engagement_1.engagement_translations.create(language: "fr", title: "PRODUCTEURS", content: "Accompagnement des producteurs et soutien de l’économie locale. Nous mettons à leur disposition une main d'œuvre formée par nos soins aux bonnes pratiques de récolte, ainsi que tout le matériel nécessaire au ramassage et au transport de la mangue jusqu'a l'unité de conditionnement.")
 
engagement_2 = Engagement.create
engagement_2_en_tran = engagement_2.engagement_translations.create(language: "en", title: "LOCAL POPULATIONS", content: "Training and information for local people working in the process of producing, harvesting and preparing fruit for export throughout the year.")
engagement_2_fr_tran = engagement_2.engagement_translations.create(language: "fr", title: "PRODUCERS", content: "Formation et information des populations locales amenées à travailler dans le processus de production, de récolte et de préparation des fruits à l’export tout au long de l’année.")
 
engagement_3 = Engagement.create
engagement_3_en_tran = engagement_3.engagement_translations.create(language: "en", title: "CLIENTS", content: "Guarantee not only products of superior organoleptic quality, but also products of a sanitary quality in accordance with the regulations in force, in particular concerning the Bio label.")
engagement_3_fr_tran = engagement_3.engagement_translations.create(language: "fr", title: "CLIENTS", content: "Garantir non seulement des produits d’une qualité organoleptique supérieure, mais aussi des produits d’une qualité sanitaire conforme à la règlementation en vigueur, notamment concernant le label Bio.")
 
engagement_4 = Engagement.create
engagement_4_en_tran = engagement_4.engagement_translations.create(language: "en", title: "CONSUMERS", content: "Provide healthy and quality products both tasteful and nutritious. Show pedagogy especially on the conditions of conservation and quality of our products.")
engagement_4_fr_tran = engagement_4.engagement_translations.create(language: "fr", title: "CONSOMMATEURS", content: "Fournir des produits sains et de qualité tant sur le plan gustatif que nutritif.Faire preuve de pédagogie en particulier sur les conditions de conservation et la qualité de nos produits.")
 

puts "create default d3s information"
D3sInformation.create(name: "About", image_1: open("http://res.cloudinary.com/dev02l2pv/image/upload/v1546569825/ayvdpzwiiozdp7nrj8x8.jpg"),
	image_2: open("http://res.cloudinary.com/dev02l2pv/image/upload/v1546569851/p3aym9cx7xxxlowkh6fa.jpg"))
d3s_infor_fr = D3sInformation.first.d3s_information_languages.build(language: "fr", title_1: "Les origines de la marque",
	des_1: "bLa marque D3S est née dans l’exceptionnelle région du Sine Saloum au Sénégal, de l'ambition de ses fondateurs de valoriser des mangues d’exceptions disponiles en grandes quantités sur une courte période de l'année.",
	title_2: "N'avez-vous jamais été surpris lors d'un voyage à l'étranger par le goût d'un fruit que vous pensiez connaître ?",
	des_2: "D3S s’est donné pour mission d’amener sur votre table le goût unique et originel de fruits d’exceptions cultivés dans certaines régions préservées du monde.",
	des_middle: "Permettre aux consommateurs européens et à travers le monde de découvrir ou de redécouvrir des produits d'exceptions C'est avec cet objectif en tête que D3S a recruté et formé le personnel travaillant aujourd'hui dans sa première usine installée depuis 2017 au plus près des zones de récoltes du Sine Saloum.")
d3s_infor_fr.save

d3s_infor_en = D3sInformation.first.d3s_information_languages.build(language: "en", title_1: "The origins of the brand",
  des_1: "The D3S brand was born in the exceptional region of Sine Saloum in Senegal, from the ambition of its founders to promote exception mangoes available in large quantities over a short period of the year.",
	title_2: "Have you ever been surprised on a trip abroad by the taste of a fruit you thought you knew?",
	des_2: "D3S's mission is to bring to your table the unique and original taste of exceptional fruits cultivated in certain unspoiled regions of the world.",
	des_middle: "Enabling consumers in Europe and around the world to discover or rediscover exceptional products It is with this goal in mind that D3S has recruited and trained the staff working today in its first factory installed since 2017 close to harvest areas of Sine Saloum.")
d3s_infor_en.save

puts "create origine"
Origine.create(name: "Origine", image: open("https://res.cloudinary.com/dev02l2pv/image/upload/v1546672426/xggm3hsn15b3yzpssdgo.jpg"))
origine_en = Origine.first.origine_languages.build(language: "en",
  left_text_1: "EXCEPTIONAL PRODUCT, EXCEPTIONAL ORIGIN",
  left_text_2: "THE REGIONS OF ORIGIN OF OUR PRODUCTS ARE REGIONS STILL PRESERVED FROM ALL INTENSIVE AGRICULTURE",
  left_text_3: "The regions of origin of our products are regions still preserved from intensive agriculture",
  right_title_1: "Hybrid territory between land and sea,",
  right_des_1: "The delta of Sine Saloum is made up of hundreds of islands and islets covered sometimes with earth, sometimes with mangroves.",
  right_title_2: "The Saloum Delta",
  right_des_2: "Is transformed into thousands of water channels hosting one of the richest protected ecosystems in Africa, listed since 1981 as a World Biosphere Reserve and World Heritage Site by UNESCO.",
  right_title_3: "The land of Sine Saloum is generous and its varied patrimony",
  right_des_3: "Mango, cashew apple, tamarind, coconut, monkey bread, ditakh, jujube, citrus, papaya, bissap, okra, loofah, etc ... and it is in this preserve preserved that D3S has installed its first fruit preparation unit.")
origine_en.save

origine_fr = Origine.first.origine_languages.build(language: "fr",
  left_text_1: "A PRODUIT EXCEPTIONNEL, ORIGINE EXCEPTIONNELLE",
  left_text_2: "LES RÉGIONS D'ORIGINE DE NOS PRODUITS SONT DES RÉGIONS ENCORE PRÉSERVÉES DE TOUTE AGRICULTURE INTENSIVE",
  left_text_3: "Les régions d'origine de nos produits sont des régions encore préservées de toute agriculture intensive",
  right_title_1: "Territoire hybride entre terre et mer,",
  right_des_1: "Le delta du Sine Saloum est constitué de de centaines d’îles et d’îlots recouverts tantôt de terre, tantôt de palétuviers.",
  right_title_2: "Le delta du Saloum",
  right_des_2: "Se transforme en milliers de canaux d’eau hébergeant l’un des écosystèmes protégé les plus riches d’Afrique, classé depuis 1981 comme Réserve Mondiale de la Biosphère et inscrit au Patrimoine mondial de l’UNESCO.",
  right_title_3: "La terre du Sine Saloum est généreuse et sonpatrimoine nourricier varié",
  right_des_3: "Mangue, pomme cajou, tamarin, noix de coco, pain de singe, ditakh, jujube,agrumes, papaye, bissap, gombo, loofah, etc… et c’est dans cet écrin préservé que D3S a installé sa première unité de préparation de fruits." )
origine_fr.save

puts "create popup"
popup = Popup.create(name: "default")

en_popup = popup.popup_translations.new(language: "en")
en_popup.save(validates: false)

fr_popup = popup.popup_translations.new(language: "fr")
fr_popup.save(validates: false)

puts "create facility"
Facility.create(name: "Facility", image: open("https://res.cloudinary.com/dev02l2pv/image/upload/v1546919139/section81-bg.png"),
  video: open("https://res.cloudinary.com/dev02l2pv/video/upload/v1546918913/SampleVideo_1280x720_1mb.mp4"))
facility_en = Facility.first.facility_languages.build(language: "en",
  left_text_1: "SMALL PRODUCERS AND FAMILY OPERATIONS",
  left_text_2: "A guarantee of quality",
  right_text_1: "section1 We chose to focus on small producers and family farms rather than intensive agriculture in order to value and support the local economy while preserving traditional food products and ensuring the conservation of local agricultural biodiversity and sustainable use of natural resources.",
  right_text_2: "This choice is for us a guarantee of quality of the products we select to offer you the best.",
  right_text_3: "The owners are grouped together and we certify the harvest areas under the control of Globalgap and Ecocert. We establish the purchase price together and set up a harvest schedule (between May and late July depending on the weather and the level of ripening).")
facility_en.save

facility_fr = Facility.first.facility_languages.build(language: "fr",
  left_text_1: "PETITS PRODUCTEURS ET EXPLOITATIONS FAMILIALES",
  left_text_2: "Un gage de qualité",
  right_text_1: "section1 Nous avons choisi de privilégier les petits producteurs et les exploitations familiales plutôt que l’agriculture intensive afin de valoriser et d’accompagner l’économie locale tout en préservant les produits alimentaires traditionnels et en veillant à la conservation de la biodiversité agricole locale et à l’utilisation durable des ressources naturelles.",
  right_text_2: "Ce choix est pour nous un gage de qualité des produits que nous sélectionnons afin de vous offrir le meilleur. ",
  right_text_3: "Les propriétaires sont regroupés en association et nous certifions les zones de récolte sous le contrôle de Globalgap et Ecocert. Nous établissons les prix d'achat ensemble et mettons en place un calendrier de récolte (entre mai et fin juillet selon la météo et le niveau de maturation).")
facility_fr.save
