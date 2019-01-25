const fs = require('fs')
const os = require('os');

const blacklistClass = [
    'Classificador_Orig_Prec_Acur',
    'Linha_Generica_Edicao',
    'Area_Generica_Edicao',
    'Simb_Hidrografia',
    'Texto_Generico_Edicao_Mini',
    'Texto_Generico_Edicao',
    'Simb_Ext_Mineral',
    'Simb_Limite_Area_Especial',
    'Simb_Limite_Politico_Adm',
    'Simb_Trecho_Duto',
    'Simb_Trecho_Hidroviario',
    'Simb_Trecho_Rodoviario',
    'Simb_Trecho_Ferroviario',
    'Simb_Curva_Mestra',
    'Area_Nao_Mapeada',
    'Ponto_Turistico',
    'Complexo_Abast_Agua',
    'Complexo_Aeroportuario',
    'Complexo_Comunicacao',
    'Complexo_Gerad_Energ_Eletr',
    'Complexo_Lazer',
    'Complexo_Portuario',
    'Complexo_Saneamento',
    'Estrut_Apoio',
    'Frigorifico_Matadouro',
    'Instituicao_Publica',
    'Madeireira',
    'Org_Agrop_Ext_Veg_Pesca',
    'Org_Comerc_Serv',
    'Org_Ensino',
    'Org_Ext_Mineral',
    'Org_Industrial',
    'Org_Militar_Ensino',
    'Org_Militar_Saude',
    'Org_Pub_Civil',
    'Org_Pub_Ensino',
    'Org_Pub_Militar',
    'Org_Pub_Saude',
    'Org_Pub_Servico_Social',
    'Org_Religiosa',
    'Org_Religiosa_Ensino',
    'Org_Saude',
    'Org_Servico_Social',
    'Subest_Transm_Energ_Eletr',
    'Est_Med_Fenomenos',
    'Hidrovia',
    'Localidade',
    'Veg_Desconhecida'
]

const blacklistAttr = [
    'escalaMaxSimbolizar',
    'ordemTickDepressao',
    'justTxt',
    'visivel',
    'repTipoTxt',
    'necessidadeManutencao',
    'tipoRepresentacao'
]

fs.readFile('E:\\DINIZ\\3_Desenvolvimento\\edgv_2.1.3_pro\\conversao_gothic\\Browser_EDGV.txt', 'utf8', function(err, data) {
  if (err) throw err;
  let classes_fixed = []
  data.split("\r\n\r\n").forEach(c => {
    let dados = c.split("\r\n")
    let aux = {}
    aux.classe = dados.shift().replace("Class ", "")
    if(blacklistClass.indexOf(aux.classe) == -1){
        aux.atributos = []
        dados.forEach(d => {
            if(blacklistAttr.indexOf(d.replace("attr ", "").split(",")[0]) == -1){
                let a = {
                    atributo: d.replace("attr ", "").split(",")[0],
                    code: d.replace("attr ", "").split(",")[1],
                    value: d.replace("attr ", "").split(",")[2],
                }
                aux.atributos.push(a)
            }
        })
        classes_fixed.push(aux)
    }
  })
  let classes_row = []
  classes_row.push('classe,atributo,code,value')
  classes_fixed.forEach(c => {
      c.atributos.forEach(a => {
          let row = []
          row.push(c.classe)
          row.push(a.atributo)
          row.push(a.code)
          row.push(a.value)
          classes_row.push(row.join())
      })
  })
  fs.writeFile('browser_gothic.csv', classes_row.join(os.EOL), 'utf8', function (err) {
    if (err) {
      console.log('Some error occured - file either not saved or corrupted file saved.');
    } else{
      console.log('It\'s saved!');
    }
  });
});