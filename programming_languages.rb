# languages = {
#   :oo => {
#     :ruby => {
#       :type => "interpreted"
#     },
#__________________________________________________________________
# {
#   :ruby => {
#     :type => "interpreted",
#     :style => [:oo]                   move style[0] into name
#   },




def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, info|   #style = oo & functional
    info.each do |language, type|
      new_hash = new_hash.merge!(info)
        # new_hash = {:style => style}
      # new_hash.merge!(style)
    end
  end
  puts new_hash
end
