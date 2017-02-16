puts 'The available planets are:'

class Planet
    attr_accessor :planetname, :moons, :mass, :rings, :atmosphere, :planetinfo

    def initialize(planetinfo)
        @planetname = planetinfo[:pname]
        @moons = planetinfo[:pmoon]
        @mass = planetinfo[:pmass]
        @rings = planetinfo[:ring]
        @atmosphere = planetinfo[:atmos]
        puts @planetname
    end

    def info
        puts 'Hello my name is ' + @planetname.to_s
        puts 'My mass is ' + @mass.to_s
        if @rings == true && @planetname == 'Saturn'
            puts 'You probably already know this, but I have rings!!'
        elsif @rings == true && !(@planetname == 'Saturn')
            puts 'I have rings!'
        else
            puts 'I dont have any rings~ :('
            if @planetname == 'The Sun'
                puts 'Unless you count these hot rings of fire >:D'
            end
        end
        puts 'My atmosphere comprises of ' + @atmosphere.to_s
        if @moons.nil?
            puts "I don't have any moons either... (ノಠ益ಠ)ノ彡┻━┻"
        else
            puts @planetname + ' has ' + @moons.length.to_s + ' moons'
        end
        if !@moons.nil? && @moons.length > 10
            puts 'Do you want a list of all my moons?'
            moonreply = gets.chomp

            if moonreply == 'yes'
                puts 'My moons are called:'

                @moons.each do |mooname|
                    puts mooname
                end
                puts

            elsif moonreply == 'no'
                puts 'fine :<'

            end

        elsif !@moons.nil?
            puts 'My moons are called:'
            @moons.each do |mooname|
                puts mooname
            end
            puts
        end
    end

    def learnmore(continue)
        puts 'How about learning about a planet thats not ' + @planetname.to_s + '?'

        if continue == 'yes'
            puts 'Cool! What new planet do you want to know about?'
        elsif continue == 'no'
            puts 'The others will be so disappointed...'
        else
            puts 'Well you didnt say no...'
        end
    end

    class SolarSystem
        attr_accessor :myplanetsystem

        def initialize
            @myplanetsystem = []
        end

        def plusplanet(planetinfo)
            @myplanetsystem << planetinfo
        end

        def plusplanetar(planetinfo)
            @myplanetsystem.concat(planetinfo)
        end
    end

    planetearth = Planet.new(pname: 'Earth', pmoon: ['The moon', 'Cheese', 'Butts'], pmass: 1, ring: false, atmos: %w(N2 O2 Ar))
    planetsaturn = Planet.new(pname: 'Saturn', pmoon: ['Pan',
                                                       'Daphnis',
                                                       'Atlas',
                                                       'Prometheus',
                                                       'Pandora',
                                                       'Epimetheus',
                                                       'Janus',
                                                       'Aegaeon',
                                                       'Mimas',
                                                       'Methone',
                                                       'Anthe',
                                                       'Pallene',
                                                       'Enceladus',
                                                       'Tethys',
                                                       'Telesto',
                                                       'Calypso',
                                                       'Dione',
                                                       'Helene',
                                                       'Polydeuces',
                                                       'Rhea',
                                                       'Titan',
                                                       'Hyperion',
                                                       'Iapetus',
                                                       'Kiviuq',
                                                       'Ijiraq',
                                                       'Phoebe',
                                                       'Paaliaq',
                                                       'Skathi',
                                                       'Albiorix',
                                                       'S/2007 S 2',
                                                       'Bebhionn',
                                                       'Erriapo',
                                                       'Skoll',
                                                       'Siarnaq',
                                                       'Tarqeq',
                                                       'S/2004 S 13',
                                                       'Greip',
                                                       'Hyrrokkin',
                                                       'Jarnsaxa',
                                                       'Tarvos',
                                                       'Mundilfari',
                                                       'S/2006 S 1',
                                                       'S/2004 S 17',
                                                       'Bergelmir',
                                                       'Narvi',
                                                       'Suttungr',
                                                       'Hati',
                                                       'S/2004 S 12',
                                                       'Farbauti',
                                                       'Thrymr',
                                                       'Aegir',
                                                       'S/2007 S 3',
                                                       'Bestla',
                                                       'S/2004 S 7',
                                                       'S/2006 S 3',
                                                       'Fenrir',
                                                       'Surtur',
                                                       'Kari',
                                                       'Ymir',
                                                       'Loge',
                                                       'Fornjot'], pmass: 95.2, ring: true, atmos: %w(H2 He))
    planetmars = Planet.new(pname: 'Mars', pmoon: %w(Phobos Deimos), pmass: 0.11, ring: false, atmos: %w(CO2 N2 Ar))
    planetvenus = Planet.new(pname: 'Venus', pmass: 0.72, ring: false, atmos: %w(CO2 N2))
    planetmercury = Planet.new(pname: 'Mercury', pmass: 0.06, ring: false, atmos: 'minimal')
    planetjupiter = Planet.new(pname: 'Jupiter', pmoon: ['Adrastea',
                                                         'Aitne',
                                                         'Amalthea',
                                                         'Ananke',
                                                         'Aoede',
                                                         'Arche',
                                                         'Autonoe',
                                                         'Callirrhoe',
                                                         'Callisto',
                                                         'Carme',
                                                         'Carpo',
                                                         'Chaldene',
                                                         'Cyllene',
                                                         'Elara',
                                                         'Erinome',
                                                         'Euanthe',
                                                         'Eukelade',
                                                         'Euporie',
                                                         'Europa',
                                                         'Eurydome',
                                                         'Ganymede',
                                                         'Harpalyke',
                                                         'Hegemone',
                                                         'Helike',
                                                         'Hermippe',
                                                         'Herse',
                                                         'Himalia',
                                                         'Io',
                                                         'Iocaste',
                                                         'Isonoe',
                                                         'Kale',
                                                         'Kallichore',
                                                         'Kalyke',
                                                         'Kore',
                                                         'Leda',
                                                         'Lysithea',
                                                         'Megaclite',
                                                         'Metis',
                                                         'Mneme',
                                                         'Orthosie',
                                                         'Pasiphaë',
                                                         'Pasithee',
                                                         'Praxidike',
                                                         'S/2000 J 11',
                                                         'S/2003 J 2',
                                                         'S/2003 J 3',
                                                         'S/2003 J 5',
                                                         'S/2003 J 9',
                                                         'S/2003 J 10',
                                                         'S/2003 J 12',
                                                         'S/2003 J 15',
                                                         'S/2003 J 16',
                                                         'S/2003 J 18',
                                                         'S/2003 J 23',
                                                         'S/2010 J 1',
                                                         'S/2010 J 2',
                                                         'S/2011 J 1',
                                                         'S/2011 J 2',
                                                         'Sinope',
                                                         'Sponde',
                                                         'Taygete',
                                                         'Thebe',
                                                         'Thelxinoe',
                                                         'Themisto',
                                                         'Thyone'], pmass: 317.8, ring: true, atmos: %w(H2 He))
    planeturanus = Planet.new(pname: 'Uranus', pmoon: %w(Cordelia
                                                         Ophelia
                                                         Bianca
                                                         Cressida
                                                         Desdemona
                                                         Juliet
                                                         Portia
                                                         Rosalind
                                                         Mab
                                                         Belinda
                                                         Perdita
                                                         Puck
                                                         Cupid
                                                         Miranda
                                                         Francisco
                                                         Ariel
                                                         Umbriel
                                                         Titania
                                                         Oberon
                                                         Caliban
                                                         Trinculo
                                                         Sycorax
                                                         Margaret
                                                         Prospero
                                                         Setebos
                                                         Ferdinand), pmass: 14.6, ring: true, atmos: %w(H2 He CH4))
    planetneptune = Planet.new(pname: 'Neptune', pmoon: %w(Triton
                                                           Nereid
                                                           Naiad
                                                           Thalassa
                                                           Despina
                                                           Galatea
                                                           Larissa
                                                           Proteus
                                                           Halimede
                                                           Psamathe
                                                           Sao
                                                           Laomedeia
                                                           Neso
                                                           S/2004N1), pmass: 17.2, ring: true, atmos: %w(H2 He CH4))
    planetsun = Planet.new(pname: 'The Sun', pmass: "333,000 x Earth's", ring: false, atmos: '24-7 hot stuff')

    myss = SolarSystem.new

    myss.plusplanet(planetearth)
    myss.plusplanetar([planetsun, planetneptune])

    # myss.myplanetsystem.each_with_index do |_planet|
    #     puts _planet.planetname.to_s
    # end

    loop do
        puts 'What planet would you like to know about?'
        userplanet = gets.chomp
        puts

        if userplanet.casecmp('pluto').zero?
            puts "That's not a planet!"
            puts 'Please enter a full sized planet'
            next
        elsif userplanet.casecmp('earth').zero?
            puts planetearth.info
        elsif userplanet.casecmp('saturn').zero?
            puts planetsaturn.info
        elsif userplanet.casecmp('mars').zero?
            puts planetmars.info
        elsif userplanet.casecmp('venus').zero?
            puts planetvenus.info
        elsif userplanet.casecmp('jupiter').zero?
            puts planetjupiter.info
        elsif userplanet.casecmp('mercury').zero?
            puts planetmercury.info
        elsif userplanet.casecmp('uranus').zero?
            puts planeturanus.info
        elsif userplanet.casecmp('neptune').zero?
            puts planetneptune.info
        elsif userplanet.casecmp('sun').zero? || userplanet.casecmp('the sun').zero?
            puts planetsun.info
        else
            puts 'Please enter a valid planet'
            next
        end

        puts 'Would you like to know about another planet?'
        continue = gets.chomp
        until continue == 'yes' || continue == 'no' || continue == 'maybe'
            puts 'Please answer yes or no'
            continue = gets.chomp
        end
        if continue == 'yes'
            puts 'Cool!'
        elsif continue == 'no'
            puts 'The others will be so disappointed...'
            break
        else
            puts 'Well you didnt say no...'
        end
    end
    end
