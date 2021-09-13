module ProductsHelper

  def productos_page
    link_to 'Productos', products_index_path

end

def dashboard_page 
    link_to 'Dashboard', cargos_index_path

end

  def show_btn(product)
    #@product = product
    link_to 'Show', products_show_path(product)
  end

    def variant_list(variants)
        @content = content_tag(:span, '')
        variants.collect do |v|
          @content.concat(
            content_tag(:div, class: 'variant-card') do
              concat(content_tag(:p, v.name) + ' ' +
                     content_tag(:p, v.price) 
              )
            end
          )
        end
        @content
    end
end
