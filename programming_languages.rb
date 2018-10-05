# languages = {
#   :oo => {
#     :ruby => {
#       :type => "interpreted"
#     },
#______________________________change to bottom________________________________
# {
#   :ruby => {
#     :type => "interpreted",
#     :style => [:oo]                   move style[0] into name
#   },

#


def reformat_languages(languages)
  new_languages = {}
  languages.each do |type, hash|
    hash.each do |name, attributes|
      new_languages[name] ||= attributes
      new_languages[name][:style] ||= []
      new_languages[name][:style] << type
    end
  end
  new_languages
end
