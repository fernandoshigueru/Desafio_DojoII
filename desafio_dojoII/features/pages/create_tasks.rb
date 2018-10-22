class CreateTasks < SitePrism::Page

    element :subject_field, '#name'
    element :status_field, '#status'
    element :button_calendario_start, '#date_start_trigger'
    element :start_date, :xpath, '//a[@class="selector" and text()="23"]'
    element :related_to, '#parent_type'
    element :button_calendario_due, '#date_due_trigger'
    element :due_date, :xpath, '//td[@id="date_due_trigger_div_t_cell31"]'
    element :contact_name, '#contact_name'
    element :button_save, :xpath, '//input[@class="button primary"]/following::input[16]'
    
    element :subject_upcase, :xpath, '//h2[@class="module-title-text"]'
    element :status_field, :xpath, '//div[@field="status"]'
    
    def page_create(subject, status)
        subject_field.set(subject)
        status_field.select(status)
        button_calendario_start.click
        start_date.click
        related_to.select ("Task")
        button_calendario_due.click
        due_date.click
        contact_name.set ('aua')
        button_save.click
    end

end