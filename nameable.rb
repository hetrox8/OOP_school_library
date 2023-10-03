class Nameable
    def correct_name
        raise NotImplementedError, 'subclasses must implement the correct_name method'
    end
end
