# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2024_11_21_110034) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.string "nomeAlbum"
    t.string "nomeArtista"
    t.integer "qtdMusicas"
    t.date "dataLancamento"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "artista", force: :cascade do |t|
    t.string "nomeArtista"
    t.string "senhaArtista"
    t.integer "qtdMusicasPublicadas"
    t.integer "qtdAlbunsPublicados"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cadastros", force: :cascade do |t|
    t.date "dataCadastro"
    t.string "metodoCadastro"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "genero_musicals", force: :cascade do |t|
    t.string "nomeGenero"
    t.string "descricaoGenero"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "historico_reproducaos", force: :cascade do |t|
    t.integer "idUsuario"
    t.integer "qtgMusicasReproduzidas"
    t.string "nomeMusicasReproduzidas"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "musicas", force: :cascade do |t|
    t.integer "idMusica"
    t.string "nomeArtista"
    t.string "tituloMusica"
    t.time "duracaoMusica"
    t.string "generoMusica"
    t.date "dataLancamento"
    t.integer "qtdEnvolvidos"
    t.string "nomesEnvolvidos"
    t.integer "qtdReproducoes"
    t.string "referenciaAlbum"
    t.string "letraMusica"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "musicas_playlists", id: false, force: :cascade do |t|
    t.bigint "playlist_id", null: false
    t.bigint "musica_id", null: false
    t.index ["musica_id"], name: "index_musicas_playlists_on_musica_id"
    t.index ["playlist_id"], name: "index_musicas_playlists_on_playlist_id"
  end

  create_table "playlists", force: :cascade do |t|
    t.integer "idPlaylist"
    t.string "nomePlaylist"
    t.integer "qtgMusicas"
    t.date "dataCriacao"
    t.string "tipoPlaylist"
    t.string "criadorPlaylist"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nomeUsuario"
    t.integer "idadeUsuario"
    t.string "estadoLogin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

end
