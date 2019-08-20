class BookingsController < ApplicationController

  BOOKINGS = {
    1 => { name: "Excursion d’une journée complète à Tulum, à Coba et au village maya", address: "
Ruines de Cobá Tulum Archaeological Site", category: "Hiking", price: "127.50", date: "4th July", status: "Accepted" },
    2 => { name: "Aventure à Sian Ka'an au départ de Tulum", address: "
Sian Ka'an Biosphere Reserve Boca Paila", category: "Hiking", price: "155.93", date: "1Oth September", status: "Pending" }
  }

  def index
    @bookings = BOOKINGS
  end

  def show
  end

  def new
  end

  def destroy

  end
end
