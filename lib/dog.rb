require 'pry'

class Dog

    @@all = []
    @@names = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@names << name
        save
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all = []
    end

    def self.print_all
        @@names.delete("Snoopy")
        puts @@names.uniq
    end

    def save
        @@all << self
    end
end