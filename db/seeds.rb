Brand.destroy_all
Discount.destroy_all
Cosmetic.destroy_all

brand1 = Brand.create(name: 'Anik')

discount1 = Discount.create(name: 'Black Friday', description: 'Aprovecha este Black Friday!', percent: 0.15,
                            active: true)

cosmetic1 = Cosmetic.create(name: 'Lip gloss diva', brand: brand1, price: 18_000, quantity: 1, discount: discount1,
                            description: 'Este maravilloso lip gloss de textura ligera y aplicador de silicona,  es perfecto para complementar tu maquillaje,  no es pegajoso y deja un brillo muy lindo en los labios.')
