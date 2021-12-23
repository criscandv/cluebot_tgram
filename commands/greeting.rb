class Greeeting < Command
    def call
        "Hello #{@params.first}\\!"
    end
end