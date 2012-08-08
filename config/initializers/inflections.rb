# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format
# (all these examples are active by default):
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end
#
# These inflection rules are supported but not enabled by default:
 ActiveSupport::Inflector.inflections do |inflect|
   inflect.acronym 'RESTful'  
   inflect.clear
   
   inflect.plural(/$/,  's')
   inflect.plural(/(s)$/i,  '\1')
   inflect.plural(/^(pai)s$/i, '\1ses')
   inflect.plural(/(z|r)$/i, '\1es')
   inflect.plural(/al$/i,  'ais')
   inflect.plural(/el$/i,  'eis')
   inflect.plural(/ol$/i,  'ois')
   inflect.plural(/ul$/i,  'uis')
   inflect.plural(/([^aeou])il$/i,  '\1is')
   inflect.plural(/m$/i,   'ns')
   inflect.plural(/^(japon|escoc|ingl|dinamarqu|fregu|portugu)es$/i,  '\1eses')
   inflect.plural(/^(|g)as$/i,  '\1ases')
   inflect.plural(/ao$/i,  'oes')
   inflect.plural(/^(irm|m)ao$/i,  '\1aos')
   inflect.plural(/^(alem|c|p)ao$/i,  '\1aes')

  # Sem acentos...
   inflect.plural(/ao$/i,  'oes')
   inflect.plural(/^(irm|m)ao$/i,  '\1aos')
   inflect.plural(/^(alem|c|p)ao$/i,  '\1aes')

   inflect.singular(/([^e])s$/i, '\1')
   inflect.singular(/^(a|ga|pai)s$/i, '\1s')
   inflect.singular(/(r|z)es$/i, '\1')
   inflect.singular(/([^p])ais$/i, '\1al')
   inflect.singular(/eis$/i, 'el')
   inflect.singular(/ois$/i, 'ol')
   inflect.singular(/uis$/i, 'ul')
   inflect.singular(/(r|t|f|v)is$/i, '\1il')
   inflect.singular(/ns$/i, 'm')
   inflect.singular(/sses$/i, 'sse')
   inflect.singular(/^(.*[^s]s)es$/i, '\1')
   inflect.singular(/aes$/i, 'ao')
   inflect.singular(/aes$/i, 'ao')
   inflect.singular(/aos$/i, 'ao')    
   inflect.singular(/aos$/i, 'ao')
   inflect.singular(/oes$/i, 'ao')
   inflect.singular(/oes$/i, 'ao')
   inflect.singular(/(japon|escoc|ingl|dinamarqu|fregu|portugu)eses$/i, '\1es')
   inflect.singular(/^(g|)ases$/i,  '\1as')

   # Incontáveis
   inflect.uncountable %w( torax tenis onibus lapis fenix )

   # Irregulares
   inflect.irregular "pais", "paises"
   inflect.irregular "caractere", "caracteres"
   inflect.irregular "PadraoInterface", "PadraoInterfaces"
 end
