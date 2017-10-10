require('pg')
class Wanted

  attr_accessor :name, :species, :value, :homeworld
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @Species = options['species']
    @Value = options['value'].to_i()
    @Homeworld = options['homeworld']


  end
  def save()
  db = PG.connect({
    dbname: 'Wanted',
    host: 'localhost'
    })
    sql = "
    INSERT INTO Wanted (name, species, value, homeworld)
    VALUES (
      $1, $2, $3, $4
    )
    RETURNING *
    "
    values = [@name, @species, @value, @homeworld]
    db.prepare("save",sql)
    @id = db.exec_prepared("save", values)[0]['id'].to_i()
    db.close()

  end

  def update()
  db = PG.connect({
    dbname: 'Wanted',
    host: 'localhost'
    })
    sql = "UPDATE Wanted
    SET (name, species, value, homeworld) = ($1, $2, $3, $4) WHERE id = $5"

    values = [@name, @species, @value, @homeworld]
    db.prepare("update",sql)
    db.exec_prepared("update",values)
    db.close()
  end


  def delete()
  db = PG.connect({
    dbname: 'Wanted',
    host: 'localhost'
    })
    sql = "DELETE FROM Wanted WHERE id = $1"
    values = [@id]
    db.prepare("delete_one",sql)
    db.exec_prepared("delete_one",values)
    db.close()
    end
end
