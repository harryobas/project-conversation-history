module ApplicationHelper
    def flash_class(key)
        case key
        when 'notice' then 'success'  
        when 'alert'  then 'warning'  
        when 'error'  then 'danger'   
        else 'info'                   
        end
      end

end
