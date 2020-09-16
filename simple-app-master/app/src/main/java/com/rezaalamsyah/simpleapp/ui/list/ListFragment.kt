package com.rezaalamsyah.simpleapp.ui.list

import android.content.Intent
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.core.os.bundleOf
import androidx.fragment.app.Fragment
import androidx.navigation.NavController
import androidx.navigation.findNavController
import androidx.recyclerview.widget.DividerItemDecoration
import androidx.recyclerview.widget.LinearLayoutManager
import com.rezaalamsyah.simpleapp.R
import com.rezaalamsyah.simpleapp.ui.LoginActivity
import com.rezaalamsyah.simpleapp.utils.PreferenceManager
import kotlinx.android.synthetic.main.fragment_list.*

class ListFragment : Fragment() {

    private var items: MutableList<String> = mutableListOf()
    private val controller: NavController? by lazy { view?.findNavController() }

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {

        return inflater.inflate(R.layout.fragment_list, container, false)
    }

    override fun onActivityCreated(savedInstanceState: Bundle?) {
        super.onActivityCreated(savedInstanceState)
        setRecyclerview()
        btn_logout.setOnClickListener {
            PreferenceManager(requireActivity()).clearPreferences()
            val intent = Intent(requireActivity(), LoginActivity::class.java)
            intent.flags = Intent.FLAG_ACTIVITY_CLEAR_TOP or Intent.FLAG_ACTIVITY_CLEAR_TASK
            requireActivity().finish()
            startActivity(intent)
        }
    }

    private fun setRecyclerview(){
        val list = resources.getStringArray(R.array.list_array)
        items.clear()
        for (element in list) {
            items.add(element)
        }
        val llm = LinearLayoutManager(requireContext())
        rv_list.apply {
            setHasFixedSize(true)
            layoutManager = llm
            addItemDecoration(DividerItemDecoration(context, DividerItemDecoration.VERTICAL))
            adapter = ListAdapter(items) {
                val bundle = bundleOf("text" to it)
                controller?.navigate(R.id.action_listFragment_to_detailListFragment, bundle)
            }
        }
    }

}