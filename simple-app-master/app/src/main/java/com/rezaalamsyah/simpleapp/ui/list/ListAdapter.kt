package com.rezaalamsyah.simpleapp.ui.list

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.rezaalamsyah.simpleapp.R
import kotlinx.android.synthetic.main.item_list.view.*

class ListAdapter(
    private val itemsCells: MutableList<String>,
    private val onClick: (text: String) -> Unit
) :
    RecyclerView.Adapter<ListAdapter.ViewHolder>() {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val v = LayoutInflater.from(parent.context).inflate(R.layout.item_list, parent, false)
        val vh = ViewHolder(v)
        return vh
    }

    override fun getItemCount(): Int {
        return itemsCells.size
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        holder.bindItem(itemsCells[position])
    }

    inner class ViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {
        fun bindItem(list: String) {
            itemView.tv_list.text = list
            itemView.setOnClickListener {
                onClick.invoke(list)
            }
        }
    }
}