class Uf < ApplicationRecord
  validates :date, uniqueness: true
  def self.load_ufs
    require 'csv'
    csv_text = File.read('tmp/UF_2019.csv') #leer el archivo y guardarlo en csv_text
    csv = CSV.parse(csv_text, headers: true, col_sep: ";") # transformar archivo a un formato más fácil de usar y almarcenar en csv

    csv.each do |months| # recorrer csv
      months.each_with_index do |uf,index|
        next if index.zero? || uf[1].nil?       
        date = Date.new(2019,index,months[0].to_i)

        ufnew = uf[1].gsub(".","").gsub(",",".")
        Uf.create(date: date , value: ufnew.to_f)
        end
    #imprimir cada fila del archivo
  end
end
end

