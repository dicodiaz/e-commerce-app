Brand.destroy_all
Discount.destroy_all
Cosmetic.destroy_all
Category.destroy_all

brand1 = Brand.create(name: 'Anik')

discount1 = Discount.create(name: 'Black Friday', description: 'Aprovecha este Black Friday!', percent: 0.15,
                            active: true)

cosmetic1 = Cosmetic.create(name: 'Lip gloss diva', brand: brand1, price: 18_000, quantity: 1, discount: discount1,
                            description: 'Este maravilloso lip gloss de textura ligera y aplicador de silicona,  es perfecto para complementar tu maquillaje,  no es pegajoso y deja un brillo muy lindo en los labios.')
cosmetic2 = Cosmetic.create(name: 'Lip gloss angel', brand: brand1, price: 18_000, quantity: 1, discount: discount1,
                            description: 'Este hemoso lip gloss transparente dará a tus labios esa hidratación ideal y los dejará luciendo super lindos')

category1 = Category.create(name: 'Maquillaje')
category2 = Category.create(name: 'Labios')
cosmetic1.categories.push(category1, category2)
cosmetic2.categories.push(category1)

image1 = Image.create(main: true, cosmetic: cosmetic1, link: 'https://res.cloudinary.com/dv1x9ujqe/image/upload/v1689266597/gloss_anik_diva_tigwph.webp')
image2 = Image.create(cosmetic: cosmetic1, link: 'https://res.cloudinary.com/dv1x9ujqe/image/upload/v1688957335/lip_gloss_angel_dhivhj.webp')

variant1 = Variant.create(name: '01', hex_code: '#000000', image: image1)
variant2 = Variant.create(name: '02', hex_code: '#ffffff', image: image1)
variant3 = Variant.create(name: '03', hex_code: '#ffffff', image: image2)
