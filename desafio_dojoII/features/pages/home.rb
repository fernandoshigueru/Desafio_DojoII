class HomePage < SitePrism::Page

    element :dropdown_create, '#quickcreatetop'
    element :select_create_tasks, :xpath, '//a[contains(text(), "Create Tasks")]'


    def page_create
        dropdown_create.click
        select_create_tasks.click
        sleep 5

    end

end